Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE54023CB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8220AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673248287;
	bh=KOPKFA/SD+RdUTQ0GIqqtaPxD2JJ6pMpo5zgFiLWVis=;
	h=To:Subject:From:Date:From;
	b=LFOQoodzSAVinqodRd9v7wUaYdD85nmjIB35NyfRdoqb8MYyc/xzTVMlmQ5v/wpQM
	 BfrYeLrmcHGkxf+LIdpqbfzAvbmPMxHO9bDAUoX0/5lh9HqqxfW6SIVcXm5cxv/sHi
	 YavFiBs+jykUbbQvr+gKw01I6Hq6A67K7Q4uwaN5Pye/UdkpNkj0okpJby25vTxF06
	 Qmu3Zz353XWa+Cr6bHuJu5jztdpQg116mfA7IpgY2L6lrBMI2JLYWL/tycRhe2mKYr
	 tXMIl9i2OoaXBHFPD92rQR11Oga+iB+hGiYYOYheEU/JhOPwlOOTqbI0pMHiytQuPF
	 yMxDQIe/w5Yfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676ECC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324828741.9914.16840407089773549612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edc0161e31a93dd442548af555ab185cf2a858dc33d5501a9559055ea35e554
Date: Mon, 09 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673248287
