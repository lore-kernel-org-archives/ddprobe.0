Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C436215AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733B9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667049054;
	bh=MdakUlJJ/sGNmCh20Zpu3q4hmgX3FlwrmSSqJbB8vTc=;
	h=To:Subject:From:Date:From;
	b=fGS7RCEZy78Nwt5WJehbKqv0ZMATJc2pxEqkreNyO7Yq51dLOdqLH6XiZh2FYFG9G
	 KcepKDMLhWu/E2t43g7RtoMbPqE+qBiodlmiAinfxX83mwm15SakxAK6ybQoGvAwq7
	 /UzJjMafo/RmrsGFqteZgKcnVnN83YM+z7DkkueTEnvvkQnHRCUmiLKVTvZvKwMwQ+
	 lVrbNzic4UcRcuSM4Vx/DOLqc6YCpApNGSSYS8CKMgk6sYSHizQaCJpDcpiDEHDaz0
	 dvKFay0NVS35z00aKSA3VitCXcqqAxMrGPK/kk4PV8Yy3hXO+0MH3pToB/h8bhaeTb
	 YupQQM0J7QZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51059C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704905432.3326.655900466791539578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777a049403ef93ab8eab715b2271184b403f791112ee8aa8d68085360726156d
Date: Sat, 29 Oct 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667049054
