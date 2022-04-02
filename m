Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECBE7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 20:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648930138;
	h=To:Subject:From:Message-Id:Date;
	bh=gHrmbiOuNcdYRHM5u5NIAaRbwTJ+4QQzMN3EU0+PoRg=;
	b=G6z7Tej1P+FocTKEMj2sFu728bF090GsYkulstcT4wQKLdjjKZSxIIa/umMFT3WO
	QHD0ADoKQwMDyMoIKPOs4lJUfPxZ0qUhdvHkezMNWTD5+7ToZBqCAPD3vbdBGbrgAiF
	IDpiDrfnT22SSawz0lf4QjcoYwJjxal1RSuAnxx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648930138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHrmbiOuNcdYRHM5u5NIAaRbwTJ+4QQzMN3EU0+PoRg=;
	b=Gg54cnOXdW4zXHXzUNG1xnfY1q2xecFhuk8fKhyvd9xpqQx+CyR5pe7u3d0rynq9
	Z0Z6uO2+VcewrygzcAZOtXE7YQIlKIj97PS+2FHfMe8Xgtd5s+m1Up18ZbgvqM/Jgs2
	Ns2aSA7hqQwIN9gudilZwFFWfZ5dEbVlS2+EPmAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017febe528bf-08b499f9-0ee5-4a05-aa92-c6730d0040b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe4dbfc852335b8c01533044cca63bd3dc2ef717a1d158288f2a27178113cfd0
Date: Sat, 2 Apr 2022 20:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648930138
