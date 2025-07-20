Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E92770B
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752992394; cv=none; b=G4ilwIKGsW7Nvl9splA8t7/7YVxXRVBAaDaBV6lATGkHsZ2R3ff0cgGsIWOSJbBSc76XjUZTDe+cDLkYqBtEYuUdAShZB3kKIBhl/lRogcK6jOrCnSv63zTGi3yNenHPWSocN6IVIxs77FWGT9oyfw+zvMn9AxBJGOApK11hnL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752992394; c=relaxed/simple;
	bh=bgww5M3RytqoUJd8cQWjTdjrKsaycWxNJkne4EwNFpQ=;
	h=To:Subject:From:Message-Id:Date; b=kVWnKhn+KFUzqw+4xYT/0VW/YFIvyiT+2oDu95gvcDTE1svK7AEA3l3/6j8wjr0J3cBx358rPFxxxy6ZEcSjpgZtEOEx7EZGZozRkBWXme235efder/dOCFR4q0Xlhp6TbKyXHrg59W3TrISMuhSh/gUu9DQPe0lOd7TJgh9uQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuSTKp2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuSTKp2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752992393;
	bh=bgww5M3RytqoUJd8cQWjTdjrKsaycWxNJkne4EwNFpQ=;
	h=To:Subject:From:Date:From;
	b=fuSTKp2NElmQIFH/XbrxXSTclUI70IgH81f1z4cQzhXAh/pIrcFtywqyHbbVXj6vA
	 OdqUFcx1dTbAgGg6vxMyBDqK8+9za64iBMPWW0mFtEznkjPtDKHjTTTUUpbTD7niDW
	 FjSIIe4R3BEPJPBnR0dCiggjb++dAk+ncGgG/F7YbGGH9vFrdRn8+EfH61iq9CNYA9
	 EedZcB1F+zDJKTxVt2iqCdeQz6dS2CGGgb4/tnubhZrEO7bMv9V6n5bsr1Uytvtchu
	 y9vWdC0FRDYsxpV0SeZI4Uy5RJl3GZsfOTWI08l49yxGSJ3QP0qMVvIDn9jO7yNZwc
	 F13VHXIyGCxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A1C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299239357.31638.10384680893947653563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b8e8926ed7bb90f80182728f70d817ccb5efa326c4d5ec5899a51b7c572c50
Date: Sun, 20 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752992393
