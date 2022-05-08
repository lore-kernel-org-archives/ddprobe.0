Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EFC184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 15:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652022898;
	h=To:Subject:From:Message-Id:Date;
	bh=1r4lY7KqfmQhImt3j6lhE1Ps4RMG/DET57GTu5HF4ho=;
	b=ijxgk0Ds6ryZUzZbVrIZtw/JHx/4qQgdlatk7RU2ao6nevucBKmQY95v5Vlm01Go
	dQ7zfR/r4KZWGCwJFpbRhUbVDsw5YamsrQRe2JAOJsoPGOUspZ8KHW2w3HCs56vcv3D
	vRn8sZBZm30ynqSj/Wmp2iUlxYyyex9t+d+5EhzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652022898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1r4lY7KqfmQhImt3j6lhE1Ps4RMG/DET57GTu5HF4ho=;
	b=Kfgi+dj+TEN16XWymDLRBmBRZUZ4KBQFKlEXQcQibkVxUa25hXceKuzEDGaSJ7c2
	QUN4YYbqtzvMNYD0Fqsmcl5hh0ckOL0nuBnFogFjN1QNql39BQaWzA4b1tftX9L1JjD
	y0iQ5Zx2BeYx2hxOJj9qsqA4nU0BZbMyytJVRa6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a43cee42-6d0cc462-2bf4-4609-9fbf-e1c0dc7f3176-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 301b1be9317eab4a746646af4e756cf801e3e87d53da5071866603542b90394e
Date: Sun, 8 May 2022 15:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652022898
