Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E4C1C69E
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712398096; cv=none; b=P4pWNkR6zN3LXrQwmHJk8SDaLzbN2jMf7fU6CyujwuYpLVri+4WPBgER87M2Phm0VNPnm83wrdrBQ2wCxCOFUM4JZpeJ/LXiyI/ZseE7PBj2DIzC+f6oOWE6JXUwqmLn0bNk6fZM0kO+3Frg8dNlElZ64NRa02bbnfcH8n9M9Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712398096; c=relaxed/simple;
	bh=O+0nMPcZbyoZfdvR9+aYO3OWYP3+/cFXlvV5nDz48RY=;
	h=To:Subject:From:Message-Id:Date; b=L9NJVPJhijP5JxORtFZ82qrdPNJmpP+iXJuo8MFQEdIwKwQA3jN3LDRL+BFvw0HhiWirMSZUW/b80jiFYw5kLC7SORVGHtmlrl8YngfneWKQVmk5Lj7Y9T+4XKcXbxQjOv9EVpKrmdN6t2EFnjCedFjKnrZNu8pQIudyChUu0vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5xLyFC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5xLyFC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73541C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712398096;
	bh=O+0nMPcZbyoZfdvR9+aYO3OWYP3+/cFXlvV5nDz48RY=;
	h=To:Subject:From:Date:From;
	b=L5xLyFC3kzarFFD6Scjm6/cVOaDIOKEXCxzs7yQAxZL0Nx0LjeZHonhXlTyhLrX0Z
	 izv60822aUTlBSASwWZPFKGz8BZyP1bx566WWVD1A0GLqMuGXWpN6pFI9E1Sh442zj
	 Wp0joRzeYoA2U4VlxuVSLSEx2PeJKPV0V/hd+Gt/gb8pCCZVElBCmoenYu9AebarGn
	 w/S1WwvIQUMmKbv47BKeK6hQMqxlg2X6+FG7arcddPUn1svy70oqvh1wIt6PNmihwe
	 nYJyPKgtd8VcWeZX6YVxdghuq5hEbjUrr8iwKohl4KGv3ttD+s4L8/xtQO/YnxMRgG
	 COGpdJKUiBVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BE9C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239809637.22259.12724871395463565161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b645196891c5f15c74e7c3de259b26a5f13fc3af2dd60b1b19b99497c4e14c0f
Date: Sat, 06 Apr 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712398096
