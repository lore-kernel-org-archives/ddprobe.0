Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665BA4A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647545784;
	h=To:Subject:From:Message-Id:Date;
	bh=lTum6CoRKLoZkiV1fCgBjjnHbbqW3JH2UbsC+E6nu60=;
	b=XVOzcEvIN0O9IuWq+kjPJS6IP7DPNu1RbBERgxSAUB3DyaKipo4qGV9zTBlfhP6V
	wGOF0ow27WDyoHXRi5wEYYs2CFscNHBp6zh8LlfYWk4BAVapgoQpZeyyGvgoVJPeCze
	kN1rcm+Cl1bv+vpyI1akEWOEgK6z4J6HU+yFMvtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647545784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lTum6CoRKLoZkiV1fCgBjjnHbbqW3JH2UbsC+E6nu60=;
	b=PWeMdTEwXxBBw3Kbz+ddc1yNND7GtV9TV/pVLiFXIPAlzjs/C6PcaGQj3Lr6adFD
	0KoD+nStiEHI2L3onQwqI5BRgZXmZYtPcy58BTPRhFXV4majLVCOhqbmKQVY1Z5oFan
	R++ZxTEvRfGzRurdW/OtJJwd6krSWQqZVet5CG/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f996199a9-172a182f-6554-42ce-911b-50fa8177341f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3c98d1c13d3d75602f93f7f0f44134e3ace8397447dec42e1699a07c6690610
Date: Thu, 17 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647545784
