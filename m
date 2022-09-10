Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFB2EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EB6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662810653;
	bh=fpHL2Ja9/9BZZCBJVha/LGVXe91+InC/DBKiDLP3cEU=;
	h=To:Subject:From:Date:From;
	b=lhLj//AbQpOH7MjQ13aitrVD4hfOvVtCaYlGPjShO2diS3X1v2Z1Wb57Pcpo8jGxE
	 9V7wqPQ8GuEzhDGG5fBzsWMY/8TRFRaI3OqZe3QY0s8sFWV6+s+uSedW2VmkHJ9d19
	 DVVY7HbnKAj2pMDki92jyBNGZgqBfPav69rbhDzHs7z8W7qtdetbZG7SrgRuNtfqE7
	 dXjFQXqMX9if6uGpCj4Z293i8+j3BfV73bWS94N4G3NP+YkTNyh+DVxJIb37dFo8qM
	 kglDcAk0CCl2oyiuqEDsacF/0c7NnKwYSQk+VqfArsfLRye6D1IY0XJZADfhUOltMR
	 ajYmvC17qYZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A88CC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281065336.19345.4941755156841926545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166d18da398a89bfb678153c64397ff0e1ef3f1378adedd3682fac42176628e0
Date: Sat, 10 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662810653
