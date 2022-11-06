Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E987B7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E5FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667696454;
	bh=oNmoSnq58sFVOb90fxGwaW8NYBuw4xxEK4QmwHtUhpU=;
	h=To:Subject:From:Date:From;
	b=kYKBhDatHUZfHZi3eP8MMNNNLYiWiocPUIytLHaEVS2iWO+5WU6R2JcOG89DD2atx
	 UgZygQ+CULnm+Cex3yCtc9KOf6tkrlYTgi6vWF2HTFOjjDdxNd0KDIn5c0Cb3Ae+Qi
	 tBWzaREi271uaboDFiVF03xjnrrSgDgljuYCDg/DbTges2mmaqNE6iQu2YQu90SFWV
	 9/6Bx+XHJSDzxxtJbJcAHEFXARyq68hPTyZ4aXrTDau+Ojh5nX588Xg+lpL7wP9KgW
	 ygQi2Y2kgJQbzT9HUV+ROGsBuZSnuUWeIHVnDYwXga0uyjSGf5GALHCK5EtyfW+2y2
	 rjupbALzPLXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A98CC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769645434.10917.16749350151435917614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e10444a679ffb4a5c525caa290a9b745d788b444dca1e00048f05349e7ba38a
Date: Sun, 06 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667696454
