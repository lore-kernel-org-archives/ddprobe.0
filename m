Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DF828F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660144252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ud1b8iVUvlJHfpV+xSv8iKqR9YXfmeKahUSv4McyN6I=;
	b=bSSEP/5qU6rcShkbSFf/RaEWkS/ltpW3j7vC3IsGDUfiKNmLYjke5bwFh7QURZ1n
	OZ0LzL3WAJgVKUSMBCL9LhkbandeM2nOeqTY326DysSNoe5aSDrpPZAJC0JnBfAFtT5
	KmIJ6B4eMXugP7CgVVn7S/PyTiJjdhog4jnKkGkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660144252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ud1b8iVUvlJHfpV+xSv8iKqR9YXfmeKahUSv4McyN6I=;
	b=QF+9MqeGLsRGfCuA5zWY/S9bCPI13Cox0ib/pwcPWhZrmDmBA5RnGAw/lqOH/OdN
	Lm/+T2yiWMppZbdKAjKclETS3+THVYRKeve8V/w0xYsGTASap30UpXNjBYk+mJ7B8hA
	3yti30gAAAJD84T3LT5uuaFltAdnlANfdxfWvfy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182884ef713-e1a33fac-2771-4398-8b51-7ea4225cdc2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68be0cc9c37a91777accab7d9857bb920609355d300aa2d16f04bbf98a1f1ede
Date: Wed, 10 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660144252
