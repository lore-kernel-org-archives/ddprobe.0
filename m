Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6E341A55F
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786528234; cv=none; b=c06TYo1FRaaEanIhgNMpAyu0m13zGkNFKq4pWqX+T+CKlO+NW+jbz0fc/8qhWltIwdyReAUWkyoZN7LNgABL70K695RZDZeO4SYY/8gozvJYqnGAH82/MD1bbDfea8ZgSaoAH9ACGjunbDRQ7pHCQ1yJJ1KLWjVrn7juExFaC/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786528234; c=relaxed/simple;
	bh=yV1AYOFVljiOt6e6yVdA4tqDrwQMqSxqhzUgugs4b7I=;
	h=To:Subject:From:Message-Id:Date; b=KAYFGfZx1EfC8X9dwxsKFSGYLIz4528nZWq4TqlqSZab4OWNFyufNZdUADdZts+l6znLXYtp1f7NqhM6nh+ZZd7N3Czz0Ow1xFehAeO5TPZswqrqTmAYvocgnpVDpqIy8FLPQ2OzRAx+Er8/AiKRaRN+OdDJil0FVBpwU6eM6U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0mPwfA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0mPwfA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB32EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786528233;
	bh=yV1AYOFVljiOt6e6yVdA4tqDrwQMqSxqhzUgugs4b7I=;
	h=To:Subject:From:Date:From;
	b=M0mPwfA9BKa9gcoJ0ww+bHU871FZ6xUkOb1QntX9JNMJgzbVvmxj5OChBSb4LAXcV
	 ez0YeiPwpCY5HCb8lDoMKlKZqbb1GwTJgJ1M1Us0kBoDMpdNLpX40vQWxn7tiyc9ZT
	 1gltkvhXJb4L0sFlEuwl3ofk5eZTSX2RY+Xv9YWs7KpX22HOeP7gS+tzxrekFrWjpJ
	 xn+Ckjc22SpwsezPcFUztvuPbQuzly3O99FHJJgIoZVTDLO6Dj03we3mRrc14I08Rv
	 68+gGxIfW2OjC/31McTZSS/Ecbxw9nEVZkDXRroYRuFQj+a+g5jEG2RvdVj87Y20wB
	 ZXMMf5aW1V8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A838AC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652823368.11788.11941801658844051517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb208d9fffe9248a9914d1410e1666f2d15a40521669aa9664cbd973644d1d78
Date: Wed, 12 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786528233
