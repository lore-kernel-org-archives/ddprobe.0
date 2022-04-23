Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C6D15A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 00:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650675599;
	h=To:Subject:From:Message-Id:Date;
	bh=EHkYU/CFyGBvJWUC3AUYl/davk84IMa1CQVLWrBZ9Fg=;
	b=X8CtM+zO145W7dkWArhWko+6AEZNWO9g8NyI3Loo+XLknrFg2ENbbJOBpPAjSPoB
	jDckVr/WllaQ93ulnVMigGC7Pi7iR9Z+5plj07DWhBIt+F9hcfj/wZQBeVkg38A48vm
	uZc2Tmn/uWU7VJnSi3hTs7jUBj/evfv3rTe4B/Mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650675599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHkYU/CFyGBvJWUC3AUYl/davk84IMa1CQVLWrBZ9Fg=;
	b=dHCDW0k27JUUU/U1qvmBq9GDRnpOi7F+39H5et57Qr7osKOnC5DeMoE62EfrSg3L
	l3vKj5TZmYZPcMENNwp+aVZW8jQDii/e9iP9MEx79vUrV3FoSSNIYdhkmf57X4aIxLk
	h6TJerJbJQpd1BRF6tX3aLIqPeLS9N1a0/PLZHmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053eec3d3-67ce472e-fdaa-41fd-a2fd-43a3a5e7fa70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a50e660613ce24b5aa115955d9a28ce9278214b5499ba6af7e10b6c42aa5d51
Date: Sat, 23 Apr 2022 00:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650675598
