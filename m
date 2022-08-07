Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B80E7C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659840652;
	h=To:Subject:From:Message-Id:Date;
	bh=tvHt/fvOcqnbBlUnPdEz81gLWQYOJ9qw0ySvKKqaRQE=;
	b=b/i8+jOknjPQBv02JKd7YfjeWExXt62Qa4xCkuv39mQQHLDZnoSBT/leiiWbVdgH
	rH5jy2cOvYcedCSXXYtxV+JwwTyCHPOej1JMtuDGCa5jGHnjwlDCn+6I4HrcoE9eanf
	kBI+/saOUQXde2HfQNaNF2vzN9cQ00LchHn5GX38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659840652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tvHt/fvOcqnbBlUnPdEz81gLWQYOJ9qw0ySvKKqaRQE=;
	b=W5vuytiozUs1LOHTZUr0XgrvjmIRllCHgeYBIlmHZjScUezfN1KEayKyZiyJxTo1
	hs10mQwTRndDwWfJzusp6QX9/Ez6GMFFyivDTv+6TwFaNTG7IJpd9tIYgC+FjuppG4Y
	XDZBV7PQbWO/0CF119s7FrWjpiYL6UU5hv1ecWZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827636655c-03fd6e62-6683-4fd0-9246-7bceec3aedb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b65aba4d089942110162bb29513e59189de80a26acfcede756bfc61941058420
Date: Sun, 7 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659840652
