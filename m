Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02543136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 21:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651958458;
	h=To:Subject:From:Message-Id:Date;
	bh=ZGYOs9zF4l6CahFDKE+RcELY9ifFfiFXU9Q5lV6Z/qU=;
	b=WAjBxVvynPcbAm3Ca4h0EMQnyA0BK+r/lLWRwrM7NBb3CueBRlW6U4zaoftPT8mM
	kKMruPnrrJBTE55VgH0BGiboB5CIKP3ZBL6pv1+ECeGaVXpGWiRYVQrrjm7qKnElJb0
	BcJhreE8ZBJdQQ4MGp/0XJGeQEmVi+Taek10GLuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651958458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZGYOs9zF4l6CahFDKE+RcELY9ifFfiFXU9Q5lV6Z/qU=;
	b=iJeUm5pm2oNbCIBG/FSn+6+Im869cPFFy6q2B9aFCGBAQHFZt7HALXw/4Jj/aZdO
	OIxuPsP89SUgrsdVsn5Z1EJwkf+OHZBiEkQT31wqfshMYsKkUisKjShVBh2y0izITEY
	PI0lfufPPrt/sF+fL5HXk2OdWhU8u7+pVUz8lesM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a065a7ae-76805ac0-912b-4203-baa6-1d08bdb42122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04237f15fc0020e1a9eed13963585812cddca9c9109ab62ecc35da8890fe59cb
Date: Sat, 7 May 2022 21:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651958458
