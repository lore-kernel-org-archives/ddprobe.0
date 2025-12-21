Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38886179A3
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766356434; cv=none; b=rHabyvwxSkZ1LwHwySlxa6+7TOfEvsdFyRPNMiVtejM+ZpzMIfykIyhVl434q55CN0z4yWIl8jvr6cBWOuRJXex6cpU4yuQc1YafMIFDUyrfN+uepZYtfD0vmFfYMSOj44c11AhiX+r18hGBDp9AnRNZNk3VbXJCyntLVNJ+ap8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766356434; c=relaxed/simple;
	bh=g4+tZjcn4/FAtXDu6D/hnEcJ9z1ywI9eo4rru92bCF0=;
	h=To:Subject:From:Message-Id:Date; b=PaPuHTb12wXv3UhwE81kNw5JnXgrzCpJ/GJOq/6ly3ofGpY6szc75Srk+20OCM+OyUzCENtsEsmSe4OxS/Tbz/LgbpAF2eG7bNqFWMN+LmhmmpG9rCMX71ARX8UDjSeGNTBKQBFeswfJJdKeDgYFNZhzR9O1FEq1dtONhmU44uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5cB0OYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5cB0OYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D831C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766356433;
	bh=g4+tZjcn4/FAtXDu6D/hnEcJ9z1ywI9eo4rru92bCF0=;
	h=To:Subject:From:Date:From;
	b=k5cB0OYTVGnUzjvhp7/2i5+D5gOiItCdtz4O+KaOIP4Se/H+qycD1PH4l0Xd5Z4we
	 KOqx7dinsZygp13V2hWfULdRPUhL6R1M+tEsvFrUzpXS81udRq7PNXISbo3xVOIbKy
	 ZKkNFvVZYGtpS44tJSdo4AVVJw5qd4toLFiR9E4rWP6gpI4nQszjq3E1votKLV6k/o
	 3mD6cbWhBCpAH5UfBKtUlIRbuoSLBNlLyXEpSEn/VFlilqB7A8jgT2ldjpiPkTEXaC
	 ucnzXhL7Go9p3DOVoYPC/J6D6UpnqliS3XG5fRBn2lw1RcA6wcmGnfTn3yZ7Xia+Ix
	 hzCMr0pQedVWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BCE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635643358.4118.6132063849552004070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db6734311ce6ffa79331280c11d3a85579045de379a1ffc34c3bf19fd05f194
Date: Sun, 21 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766356433
