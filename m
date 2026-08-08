Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA56372EED
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786221634; cv=none; b=P08mh/y4da0zCrrn+yCCHf5VsW8M+Kg7u+w6kmMnrhqNrJr7U7nhooZQ3fwgnpSqSE0+YNPd0JR63ByNb122X2wB/49K4VOtG2xmoo1ku1fJKhXH/C+0GKXj+o+wWr7Nt1tcUoMqM7gW2kJkJHBVeg9B2ORDD+gI5Xr0Bgncv5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786221634; c=relaxed/simple;
	bh=yZho6el8MG01JuykbMImHvhghcpSI3VtIqXdAlF8Hmc=;
	h=To:Subject:From:Message-Id:Date; b=L7H4h2e+nE9X4Nwq81dHlgjTRUP52/TtGP72BsS5KjRmJNLYIv6obK2eRuJqxXAmPkU5FZQfwKUQwO/lVBgr0ouxhf+d5UrcKDWNtEyojzebHhO8DoaIH/A7SNAaRBy33sCyJVtNv9MyNQj2lCJbS3KU2Lwrv4GRUw3KBzRb0R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3smVVd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3smVVd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6996C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786221633;
	bh=yZho6el8MG01JuykbMImHvhghcpSI3VtIqXdAlF8Hmc=;
	h=To:Subject:From:Date:From;
	b=G3smVVd+1c3GaPwXAuCpHYv/vNgJfhqzWQZk8+VaLchWOQU1kzSKqIaYIeoa482Uk
	 GnYPfDtOWPnd+P2oQsXS22UmkcYWmoNCeoZ1tVwxXpIqezZQSAnCAneX8r3XudCpJM
	 r9wB+vjMVrG1tSAGLu+nE0UcpdbxEY2uKyF22OoSoJ6q2NLNLtQNSeHCtz+0efoFV6
	 OXk0xIq1FCCRnERkYW0O/G/upCInb0U9biAB9ZCbuv407ZlpNvrwA2I4bWlNJis4EA
	 wo4ah0uFL/8I1HifVB+PtGsVSVs+uM+ivbX0idxWKo3oBl0Aw9pvNg1YaLHG73d9T9
	 6ke2XRrws+0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2631C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622163369.17477.6979096288896829198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46f9874a25cdffacf0cbcaf5fc252221bf3ef3f7f1a163c73762094e31becde
Date: Sat, 08 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786221633
