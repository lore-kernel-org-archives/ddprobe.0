Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B4185C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB46C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673097087;
	bh=eCJXGQrCr+h0casn3mKRAdvLDcQqif5KEYBgTjTiYWk=;
	h=To:Subject:From:Date:From;
	b=AEt4V8zrWdYaV2HoEbV8fMDABiydniKRFlmYyESDBf5rwLE7PrWScAYADrjOVS/zn
	 bbriylakPb758eveYKV2069PIEZ0Mz8JCx4Ho9/XUqh+vVrd3AulwGlrI2wmiwQ5qn
	 G1gLwS8R3u7TCU+/ZffD6vjvduLA6YMyYbl0ZvMYCYytvrxHTMpbtpgbtLArcb2Ihv
	 2m3ko4v5gI2IPEOFhxoElCGKKtJL+hXPEE46z17XqxLWeJs+XNg6xTu4S76JF0H2Wj
	 NPTiIhANdGWDMmvrWTN6m1rBPw1mjBYsuNjCaI3vO06uEtIpjt2ALrMxRZ4Dl1gneq
	 NBcy23k5AcDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A7C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309708757.29024.2959560060553101385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0307feda70a1e18acfac79ac6dee1a7457136c100cab8fdca343c01bef1d53
Date: Sat, 07 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673097087
