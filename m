Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79A15A7E
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8B6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662839453;
	bh=AlGKx6qaIFVq/TD4yVVXXQ+60q1f9778fhsiaoOERJY=;
	h=To:Subject:From:Date:From;
	b=V82y9/97sqYYzLrTe7QflQDzu8Yp1zk3WJGO8sl19BuFvqmAU71U93D/hLR1TkOhe
	 5cIUWo5TYWgi6qNKvNX3FVMY6PUEaJqxSus65yEkvvQRc1MSP+2IlhS8F9c6w8e3HD
	 0rta1FkYKmCScJJalhDtw4tiTZGpq3rjHpRg23J1kZHGrLbfG6tAZr0F/VVnRIpCZX
	 bU0p4tn2ET+svSimpErfNOZ9Y8WKW6LMSmKpcu4un/dr0DedOdaP9Ck8fZz3yQBWVZ
	 CjOeRVTE88bOlxyJQ+Dsava19fbALS4SCMmt3B62JuyKh4K12Esb6YiL53deXgrvR1
	 7XKq0EL4od2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5737DC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283945334.4277.6556676417963640413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f022207b59074b2416418e18e9b2031ff2bf517a67d8bbfd2a4ab89909875235
Date: Sat, 10 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662839453
