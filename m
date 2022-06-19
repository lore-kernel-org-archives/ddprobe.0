Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92237B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 01:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655600459;
	h=To:Subject:From:Message-Id:Date;
	bh=JHmvOwghlJJVin8oZ6Bskp0kvkfTPwBCICrVY72lIro=;
	b=O85yf6KLr+hwkxs/nLFWjcXFGIGU7N24nvAiug/DLZhFlW/fZZyahy/LaSYwyUHs
	vYUn6qudpvhpJn0jLtCzvyqAklBKioELDyKEPu7COwnGMwEKlhZCI87EesgtFkFOvBQ
	zGN8fOmZElRbPxn3/t9aphBtDjdW4h03hkFVJoQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655600459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JHmvOwghlJJVin8oZ6Bskp0kvkfTPwBCICrVY72lIro=;
	b=aRwZ++LZyHpa3HBytDguNuR8CTEwvVIBXqnvodRsapt5tZZjUIU5Jwytt+aXz2ve
	fwlzOaJfd6Uo46FK9K3XHzVOygkWqDO5/hZm6Zs0ClMPZdqjvMHCv0O6hjqBV38TF31
	ixXhai61uyKGxuStRwfdqpoECrLIvLW1F5YmNKiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181797a2de7-569dbda9-f475-45b7-9cb2-69b80f147f2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24e41a7483ed00dcd9c912da20373b196aa3d200972eccbbb85d91634e580ae9
Date: Sun, 19 Jun 2022 01:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655600459
