Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2831FA1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAHJnF8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC60C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705162096;
	bh=SirsGk7DXM1U/Mhdo9XqzwwL9FTNHc419tae6/Qjac8=;
	h=To:Subject:From:Date:From;
	b=OAHJnF8LZ9ANewYakDrZQAsN9/8See/Zs3P9ZVd77jbvH7uRBvcBV1dRn299LgBmM
	 5mgQ3lpG6jWohFfnLkAApANpShG2bvhLY8NGWoVaqPkIB0cQEP5bvBO/cluyf/gZa5
	 ZUuMairG6BMjkePoZmdJPHozg7JNicWFcyuOOhycIH9xWRxCr8/QrnoOeuv4KKBJZf
	 gtGtshH1CfuzF2mkubBUz2FLYfmplYiMjYDF9ymPJ8cRXPqvBj0tc5K9uRsTVmB41G
	 e09AaL64sGTmKNxt+MwDrPMsKAfYBIV+cyKM7oM+K8LsOvnOmMvCJOWUIRb2TCAmCU
	 jhnUTPVDt/R8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDF3C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170516209637.2391.5291003828820995059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002abec7f4d70faaf23c3add0f27aba661bd910b1527fa6fd77d14f9cb283bfe
Date: Sat, 13 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705162096
