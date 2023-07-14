Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADA7D521
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51E8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689349268;
	bh=zCN/Q2KRZLh6gxt5RnwAMtTCP5F5/YHMRYoZApweCD4=;
	h=To:Subject:From:Date:From;
	b=SxD2fEYxlTt91q8BsVt1rm6aGTG++X5FrvrAejmrg9/4fgFmlVhEKamH9il37jEWQ
	 Rk5/43XxGGSZWBVH59DGlBs35hKT2HYPaSkhZPweQPNlJmdzz/n9qpFhGNxpoCAEQ0
	 VVy4qdJPaYB1y2+tHBs0rwSYmotFxC4fG6Zbt4EsqdWrby37rPgD65O7IzFh3ZYDB9
	 cGk4fL8OAg/X9JqqTWBxB+vRW/Q7qiJgKJRpUci9G1wgMORskfFtECT0Ls5zEn522+
	 WWt8iIJ3VLHrs0IZcuchUfHF8dB76C82CQa1xEtFm2v9Pi6tHQuzapzVCSpheBXrVN
	 gdEoEiraakHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD1EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 15:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934926869.25274.12097941234676837510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab9c45c830224ebf2c0776afbbf8475bef511525daddc11999381c42a3665d6
Date: Fri, 14 Jul 2023 15:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689349268
