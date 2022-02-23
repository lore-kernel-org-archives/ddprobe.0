Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19966AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645644085;
	h=To:Subject:From:Message-Id:Date;
	bh=BbiTCoU6jmS7oVuC1zOIVMbgo4PzGYottK9yZIYdk3I=;
	b=mISh1xlBfuEW3DNivNcvJUqfAXZ1WbpjybVQeNmvvmmwzpVJV+6zhp3H95EjSXHk
	j+P87m9i93zbxRK1FACNq6nAsoDS08/HW4Y2ul08Y3RZHAVeU9UzniE2+LkndkGqb8A
	/AcOX/UYnvKq38WMrh699D9rXQ1NRmadq8OpoNcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645644085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BbiTCoU6jmS7oVuC1zOIVMbgo4PzGYottK9yZIYdk3I=;
	b=TxLvD2rqIqaYoiZ1uEoBnC5phOcM5/d4lbTKEGme5qsHzEuDES+KLML1KJ2t0rdD
	jZzhhg/Fbd/omykZSrueJy9HgYKOGAEyUlnIrjNbZ44jVLcfIS+uPfUpmYdXzvBMAi+
	UtYd84OumwVUjZTZIeyTs4kNns9od4wQnUAF4cm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2807f69e-f57c3324-2db0-44e8-8007-b538b6ea444f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54db191acfab6f0c25d49af540abab8c151a7cd60b40258cc963d2e1d6cd594f
Date: Wed, 23 Feb 2022 19:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645644084
