Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD47C2F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A21C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668882654;
	bh=qSm4nG5CXe1cHc6H1xZRuak7mdScweL7i5YyRtkOpiA=;
	h=To:Subject:From:Date:From;
	b=XdKgShzdssmvW02Eg+fMAZVlvgFLMJ5cppb+mVD6JOxSLvw/iXtYSW/DJgsZEfo12
	 bXUnFQoIaPeW+LxF9z4//VOb26ozPhe7l3qw+4u6Nrx6QEmLBq0/MD9LvxjboHzBFH
	 YmrtlDPaJHfPB02mS9yjJScvBY7ASplwTQy3otLg5mR4oCr2eGOgjhSvyyvg6CM487
	 IDI9Rw1+FOLa05HBrMGajYofLHz0Ji/3BQarlaxPuIzUvh/hkGbJwIq+TGxurZYX5+
	 Hk7B4YKTjpJRbBT05HwPJkGvBoYt/OWTxyIEqY0dIXzawqdJfPQoEXMo0zFlMeloiZ
	 YEGkHrkHHGZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A78C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888265432.31671.2454830301722745889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8f9c3161c7da344385331bf9478a333c9f75445beb0862c3f4a9fa275c5d00
Date: Sat, 19 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668882654
