Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AF02770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82097C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673024487;
	bh=LKQtXuzvsWZOok0aOmjtjQ/PO4s2Qip8d/uPf8is37A=;
	h=To:Subject:From:Date:From;
	b=lYNBWWxPkkc6wUT9QnwUdbfpKF+xQD9toZs9p9kt7e6oSY2p/VvONFs59fWMPDQKF
	 PLObQRKyoUVck2IkdGHHKwC51OuR+Y9KBHTEZOqUwG3FuhXeWbQazvL3Bo5XJywlWs
	 Bk/Oo9be27jv1N1GTyf/+dI9rC/yzCGLwv8dLz21Q2HC+2fnKBp4bSNMlUjB6YLy4q
	 ThkZH4CINUTirR5/SeMRCRjITd/Hg91h+URxNfWN+MTk85UgvmasJffk1Vv+Mu0+bA
	 SfwaBNP+t6jQ76HJf7xnsV+xkDPdwQ2nT0UxNMyRdyrXS+QHOM3ykckm6gfP5uT4n8
	 jhsDF4iRQUtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6146EC4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302448738.10308.13238601135700659654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f38e910f5e1b40580eaff15dc38d91a5a4f8a8cd3f63b0d7d54b456a19b63b2
Date: Fri, 06 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673024487
