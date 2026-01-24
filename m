Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B97155A5D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769240634; cv=none; b=MsmyipHJUi+ThQDBDuRo3yPChwLmgF+zRtEaayY25DM4Rr4YcKE86z7pMOsEMfFy9hjWagoCrPJntxNq4XsyshBBj7UFxRnMIy+JBGbIRzRFesBc9y8eGEJj2DGB7PdYT7mNqth/m0kki60cikP6d49Af36aQimXs9S50adoHhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769240634; c=relaxed/simple;
	bh=LXcKUqmriKWC6IIu9Q0eRS+yhYFG4BSCrYgbPYuIXuI=;
	h=To:Subject:From:Message-Id:Date; b=jgAG00qfLWiKH2cgqaZ1nnHQkUGlQeepICap60m52LG0k39IBOdLG/2SUvvKU8w3IqP/4vl00d1JGjEvYSPuG7R1/rRcqpllI5ma3vtiory0yo0uDM1icC+7BX864NnnyX7xfdY+rG0QYJgwPzPlS7Yz4P47Ip9Fl1N4Xy4vbl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yxnp2YOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yxnp2YOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769240633;
	bh=LXcKUqmriKWC6IIu9Q0eRS+yhYFG4BSCrYgbPYuIXuI=;
	h=To:Subject:From:Date:From;
	b=Yxnp2YOolFW2JKQh/x/xW7Av5NpVNmpuxPIZrOFgdDu+8SKaICMqQ2Og5EOGbwmRU
	 zCrSPew484AGiW9lmE3/BDXsdYTXAKoOTTxPw9zDmyzxjNUgYDqT/+RYuwODdD386P
	 +eehFotup+/6k22CsNxvVxWzYuuQ0QJDMfw32/5NGxDF6Mqy6/f19F72RWaj0/mkOW
	 HjSlXWIrykX4xuKGrjnRLzZcV18nO0BEsjgR2uXcL+VnhHWAsed5uG1jL8CJh1ZgkI
	 GEad6uoETqAfWAAVFVn9ih/37uMH1MxMvOoLHPD+RKYKj3MzoB9frJoqBu+BT8QXsC
	 qs5V/c1/QtR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5DD715D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924063358.25766.13703364009909951926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca16e8b895348059d92a9906a9a4f6bbbb5c5c676181ab3405a2d769339ab0fa
Date: Sat, 24 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769240633
