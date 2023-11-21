Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66941CF9A
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgWyYBj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B4C2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700549896;
	bh=LAHyE4K9G4dKk0eCKThjX+Q1h7Ma06jf9HX8vSnG3wg=;
	h=To:Subject:From:Date:From;
	b=VgWyYBj1gHzmJ2PW/esE02e0yqi5REFaq0dAmZ5pWTrm9TlolAvOpafZNLye3WJLU
	 oJRBCL00khA4jkQMFZq/qVX8UWU+iVR5agXQIQrTKhu/YDOBlzqSRzZ5unXNIgX+Gk
	 r4cyDZrddGeOKmEgm58Bim8s0Pk83FTcEu16yir0y6Pexq1iSB3exAxf71swAS/pp0
	 TAR0Js2mIb4b+hz1HNarPN2iK6g6812+c3hf/UuLOnSjAy9SyQsk0XOxAdUW0y5zXw
	 X/k3j1XZ8V2ISPMRi1xITV/pmFdLFKZ/Eo0/sZ0V/oUIc80UyIR9LRfRJYotXgp4gU
	 IpV/R1h9BsKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6ECC54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170054989637.25485.12897077553957730742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2347a6564db3aea5ee96081fdb6b991f43b438bb690a3f5aa0750ec2237ec36e
Date: Tue, 21 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700549896
