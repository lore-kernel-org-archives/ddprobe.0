Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2798A3E1701
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779092434; cv=none; b=mGBHHWLjbZdVALtZYOBB3vlJT0nW9eiC8JWLJn0i4fbuK11l9p5ge06Rdjp9jUfmSn9VCxqvs62HkuWHjXpWOZ32yBct639DZSHbr3S/Xi7jNM4ZHC+vzCTwFgargYliS904LfJ71oGir7uWhioMO2Vr/u2a4s7ooUhDO6/tU8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779092434; c=relaxed/simple;
	bh=fIpaeB4FjrwlXnb2lnMaka2jjXpG0rJO7ip9OEeZXo8=;
	h=To:Subject:From:Message-Id:Date; b=MhhJKgKmpK4+MkikOkWNrlkgA6HWZGRNyRU5t5txdtyoCFrXWnzfWkpyRyx12VUis31/slOpEWOYnUSc/SVQA3BKNHRrQx+kU3lXMriNVQdy4OvYY0bats3oaF4i2JzafYssBIrpqiMjdihYLVR5ydHKFvlCzuNjNU/gND9UDW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dt0NIEsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dt0NIEsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11B0C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779092433;
	bh=fIpaeB4FjrwlXnb2lnMaka2jjXpG0rJO7ip9OEeZXo8=;
	h=To:Subject:From:Date:From;
	b=Dt0NIEswu+K6BsSf2RCy5eQp9Z6AZYtUWo7/K2U1u1G1HMe0XQgtdJHe0byhvqF31
	 UMgSNov0/IbOFqVKqB0T53PUX/s6dEmdog5f/8s5CFJAaDHrEI57eAzmVv2iXB+qbx
	 uzELe3CZzriDGy+PEp5TMraJnkFC2npLtjL6ZtGg2KkPERFMTNM30pj9qtV+UKZuAq
	 kUA+g/co41cq1Z8L8O1sVBVm8yNAKCw6EmPRTrd6xjYRtbnKbxywV+5R07om4YgGgU
	 1tJti+7LyrO3zSXHnjk/XxLj3plMtBWLyAj8v/BEmO+buYg3E3yWYCJ+2s7NlstTnM
	 sFr/OitzJm30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F05CD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909243371.16269.17306199128885036679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e916dd8ae6ebc4e72221100f2024872efb488b86e8ceef62335917b1ef9342
Date: Mon, 18 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779092433
