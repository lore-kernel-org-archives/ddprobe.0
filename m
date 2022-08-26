Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DC44C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61E55C4347C
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661548852;
	bh=+vQlf/IEs6BvIM244aEobJA9ZyADLsiX/bPW38U01FA=;
	h=To:Subject:From:Date:From;
	b=TQArc6tM7l7syNMro7/E8GFrZdjqcaCN85mAPdglh6lTJUAlLWg9zIfWDggRli9tM
	 2O+1N8zhzcvfFUSc1+hkg28cjOHSgwMxDcCDMXjdggDSkb1AlRsK0LguweKAfa0HGW
	 NfXoY2eGd5in0rYSuxztcsxkz3ueN153ikznpBHAGiAigGZ0F+K4JHttaC0QM17Vdz
	 1a3M90qoqgcbH2Whk6P/jxMLoKEG4uimNTdZ/u/5EkByOKJ1lCo4QZqH70osvW4TPt
	 GLVY+3n1nilLjFmmo52ezRXyJLZ7CZCSN0Grc50UnFqSTYaVxODYtp2xe3OcdVso2k
	 KAjrl8PsS6jrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503A4C65C0D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154885232.4733.15334713987980330421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9062b3601ee6b6b3e5bad01bb1b5ea100c3b51459eb9ee3a2c7c0cbb58bb6f
Date: Fri, 26 Aug 2022 21:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661548852
