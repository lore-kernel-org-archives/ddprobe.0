Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D911F364
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD36C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671236487;
	bh=wd/A54ZzdfygpCXsNlVktgoE1mGSfB2ax6JsEx6L0Tc=;
	h=To:Subject:From:Date:From;
	b=YBmyXR4jwwgAFN22BZDRBqTJ9kVl/QG1IpjWluaQNDL+EoUc+TwPI6R2NwPsxLAej
	 9a6vaoC0IuqcnOtywAQwUDNDjdCUQDMnjSyOfp3jUKHxtovUL6jr00QGjo038tf82a
	 zi0v/54P8BRlUYbrlwsuoOZ2In9V/2VRUvAzsmvAi3uDBNnMhYbaWJE93aGrO9FEOq
	 Sf/BSeOZ2Ru82sOWN74m8BROKqfrwVBomttPZNdtpjYWbmW/TV9ScQ3lLRuAV7gdaM
	 UawDznQTyu6PqV2cx2Oe9TX7xA10sovSpDCp7UrapUUV7JJxjX/oOq7t08elOqpXCM
	 oOadqTgFrkOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123648739.7600.4757712272750461078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e8134af6e27d9a2e5233e1336304e08b7780f372175fa2cf4ba2b8e3fdf110
Date: Sat, 17 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671236487
