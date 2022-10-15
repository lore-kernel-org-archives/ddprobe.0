Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBD17B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6802AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665801653;
	bh=6zHpZf4m0HcgnApHvDQy2cXMil0BQWfujVxcuUBr6ow=;
	h=To:Subject:From:Date:From;
	b=SKk5A1Opg5hN5V3tvcznUxlwVYpoowC8AIy7DH1DhIxS2kLXadTyRhUtfj/jBtDWO
	 R4o99ZkmJu/O4WrdWPufSXKomuxUMbCifVi+QPbbZLW9yYkjLgYb7tch6i1qzMlVzi
	 CaFJNED84J/rkrznSTttg923PF4xKOGyI/IsHDpDHgnmd2bbR894pQ+9MmIdDITzm/
	 SnMfQI4vRsAZqyZ9H2ZT7/+8gI3GUUg0JD94pFfCho6YxPktVCuxHeCklVMwKlM00N
	 FFc2m/f5lBUfm7HJOSgndZMoFblALGBvdPkKtB9Fh/yBLaRHwJ5qhIzC8gPtfMWD0H
	 N7Fu8J412QApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D98C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580165332.25597.9068370700855086435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653ab3809c7077cdda9d8c6ab7d852fff5e7823f3984e8d1ec32b791970fdea0
Date: Sat, 15 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665801653
