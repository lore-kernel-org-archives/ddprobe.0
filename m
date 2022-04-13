Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EE023CA
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 05:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649827858;
	h=To:Subject:From:Message-Id:Date;
	bh=uUQoaWtiC40ClC+oi+aUpXeyiQDo104eWP8eubocg+A=;
	b=ko4PE5zuy8+EnhatxD1DvlO4pT6i9Z5BkUhrbAUg1WXWN0fejCDok7VWykCr8mh+
	fnDUBThEpUKNCl/cyNaHsX/UJ4aphLn/LtQj1GhiMqC3ciZG7yZGgf4hboVJNffCfpL
	q2V78zbUYFlwz2Z539rXOjYoDvSG23nO2xuN8njc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649827858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUQoaWtiC40ClC+oi+aUpXeyiQDo104eWP8eubocg+A=;
	b=Lwa5Xo3lO4fVSu60PeKgnt6J+XmlK+SCS3ZRQzgXhpYzYBYuej4PsG/1kriLrwxM
	IIC7fT3LbNbNIuayoV002nABNdtMhsreH5HxCRbesGljPeD+lKKh/uoyDpiBCMGX2x4
	i4dLgP7WaAjHcZfVxUvk2rRybqYMoW/5DC56rlVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021674734-f0393583-f887-4b93-80e1-7fed777a8b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04995024d8c4151f1894c11d1b2b13cc1559f5d05704f9867a133cecce3abd88
Date: Wed, 13 Apr 2022 05:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649827858
