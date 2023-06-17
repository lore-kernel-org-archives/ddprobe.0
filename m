Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953C2A945
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6654C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687029008;
	bh=6FC4wYJTnRi6T0b9ohdR2VNke2NuIbRd/oXe0UY9S1o=;
	h=To:Subject:From:Date:From;
	b=XOepFgxYcrlZrPYRfyio9VXKO/I5wMiHRy/gWp9a3ZPpnv8IABWrZTo4lX2OHDkh6
	 FSbffffyPnZyu6Q4eSfDw5TX5ELFl+Ft4xztTqYEL3F4kUq0dSHWgjnZ9wo9D7sIJh
	 fGRMSYhz5ooTaGqG2sjih4MmMV6SzmRBrCOIxl/bgw5mJNB8OnwHBIxk7k3mXNHxv4
	 Ups85wnCA3d2hT8+0b9PeRCXZYaJGQFT8zVXVkqTcvisOUkjEG4/b3pB0WbpMSIsXJ
	 DuOOQX6Nii/ZckS997EfKBN+ULMK3+6qEx1UG5GlYTuJ8zc3HGfnaRtKYSlzDWdvxt
	 PR4huey4fIgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70F4EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 19:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702900876.23920.906656697434334412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fec80096457f185b208807053824fdc03381148895b15da682cb3b02dd72c3c
Date: Sat, 17 Jun 2023 19:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687029008
