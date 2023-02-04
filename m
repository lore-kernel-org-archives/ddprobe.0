Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4237F
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 08:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2344C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675500965;
	bh=Yp3lOlNCT4EYS23TspZtjSX+8nAcmOGrPWwzotS3Jfc=;
	h=To:Subject:From:Date:From;
	b=jSKng/kD1kQibjy0tDVTHPseB5WmLmu1UzmnAW/kZHjT5kp5VZcqZMBIZyq4dPju/
	 QMKY/IiTahMkqgPzNoyR2X9y2ni5p9ZPh3DARcdOa4Bce+z3G/yC8Ldss3OY2xOBEy
	 wHT5L84vy5gSSLT8259kCZMRomv9Au+Fq+5S7SH3Qdi1Yu+fAzjDs/NGY/1ZQTl9GZ
	 /tW0r0gIjHgy32qIqe/7GjldoyWRQTEEbKFB++d8rpgbKfwVh0giEDBCX7vP2CqbxH
	 y1lNoeQT5XX64VTjVMBdLzB/So9kn+3QBMWDwOEY9xiCLuJ9rgt+eiZDvVU/jWVFVJ
	 AYkwUZy4/6Mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E33C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 08:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167550096574.19245.17314918985777194031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3e69b9deda6409be72e36509d56dc6745e7e7c86c071e3fa98820aa3c04bd2
Date: Sat, 04 Feb 2023 08:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675500965
