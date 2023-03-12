Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D355EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678657625;
	bh=j/ZpuihEG8Zz2eSB4xDJskjyODlg43Vi4Ju1r8Jznb4=;
	h=To:Subject:From:Date:From;
	b=QXQXmkGRGOr+JDTKncHInkMoD03uDSlzm8aiPm0znxcaGyC/9srlO4yg1vMO2rxfL
	 vAlO8BbEElxd7rFgBPHAHVBbWCybqVvqxodg18c3jwbTdo6fFKSfpdi8BbX5Uy6USr
	 qZLRC9eyYqoMKsO5VK9Dn6fk9RrF1m+naMeZwcb/vcEmuq2f1qQZlxCsWum9CgX9iq
	 RHJoTAiWT11P6Ssfu/3B5u+tPq+lhpvenHFfBJGBVMfuXIuji4x13vT1NMdpkE2Ptb
	 2rWtq6Oq+Tvk9RqiHxY4uXHO5XoVcL20gZvAK0XGwj1wGlgOdiFB82wnulTFz1hf9r
	 /3Rul4PiHDkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB053C6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865762575.24996.7570613417996589342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a089e5227100f68e35ad21670f9b30e0cb33f8315ea6be5beaf0cc6c15014360
Date: Sun, 12 Mar 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678657625
