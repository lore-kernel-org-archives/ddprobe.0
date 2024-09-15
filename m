Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEAE42069
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726436754; cv=none; b=r5ABkjf1Q/8ZCgMvg1zN3TE1tY54W1c0TniwO8l4kdC8T0CofqNcMM1PWRD7BUnsfedCcmTCKUH+I/PfWdZMN5Lbwx5Msa/+doIRSbiH93H46/TQ9fp5ec3/QHkO+W/u6/oezHjyLiNWgJxae++sUAiFkYtBd+OMQYSHw16AqGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726436754; c=relaxed/simple;
	bh=P/xi5RI/FsLPT2G2EMGZ1aqkllI1+oyqE+se3p2kio4=;
	h=To:Subject:From:Message-Id:Date; b=Jl52nJBqHINitndDxp58QDo223Qk1dMqvxWZTr64Wm2Z1KcwenAhgxA+NV+mABbB69BuLr3cOFwtMU5SgoqPPTADNcM197Y/XTVlY2g2wL7bTjHffvylFd+xXkwKKmVSN/LsMMOTd+Jpf7B2yZWa/g1MynBEbwslLzAIR7Ph6Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5SbWfb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5SbWfb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8691C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726436753;
	bh=P/xi5RI/FsLPT2G2EMGZ1aqkllI1+oyqE+se3p2kio4=;
	h=To:Subject:From:Date:From;
	b=A5SbWfb5bVK/OLaBEWDKbWyGTasoa0AmtKj68oJlCD77b5NEy4TscRDRXBKaKV+6A
	 b0ZBjsS77BvDrzDbgL/6EH6exBVuu2QsXEY1ZcPS/lVyB9U/KP5zww5QMK/Ll+ZRqw
	 OTr5MoEBXEftrW1UpSonedgBvmCJQDkR/FYq60KcbwvFIgGoyD5i4nDodwhLxbMUCt
	 otIQZuGZaikQTdfoQF3zdymvBpua2dWW2JRNnHgMeRfIIp2TaloICA9QmgVMAnqG3D
	 vTQyPVyMYhFSdTnTYD7KDUKu9p24ASDAex2JANYGYrT3wjPdkPeOlQjYl5C+kltRg9
	 cDAUmOgvrekLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96895C3ABAD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643675360.6044.14071171165147044268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b438345a20972f90e8d49807f9e17b291f2c5e2f7cbc84db609a4a3cb3713d20
Date: Sun, 15 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726436753
