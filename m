Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52E52F25
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73ECCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669305654;
	bh=ccZwvXTZFAvSfovb+YD2ft0D16VinzhMQGS9/wL4hZA=;
	h=To:Subject:From:Date:From;
	b=qzl6Lc1E7qGL2PHq1Lx7nfXJ1M6eb9Qyb4r/r1TONTDs0I23pcUcJNTqKWmBEgaop
	 t1EdNc6mcz4oo5Eul0oIzUFTdYwXRXPz0aLMoHq3ZWjnqc+Ap2N2f8KsuF+sZZO6XG
	 FWSMkonUEWAJQFTjrUHpM2HRuLv7/GBSpUOIRCarg+FMOPGmWwJCPaUQI05w6er3Ht
	 wPYQMv/3c+9gYk54Nw5eeY0KtXLglxgLMiQ/XSNS7exuvMOebhs1aVCSzsiO1Y0Irx
	 O2XTNfDLX3i/Zz0X2kZOZGHJx+7f4HoH5ePDeo5/t1T881cq7W/tszMs18TEtxxGUd
	 ceIyWeGnAbgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DB6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930565433.11411.16547005051583635840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6da908acb2a15e6186f08d71654f43f7ec59fe72556934c13b46796e314f767
Date: Thu, 24 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669305654
