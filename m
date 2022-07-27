Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5825F7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658888452;
	h=To:Subject:From:Message-Id:Date;
	bh=5wFmh1Jp69HkRrtgt3wVLH8mVbS2usHH8oGucuEPdW4=;
	b=ZNVZqmKgf0hJYhwveNhfk+jOJ327PdKwJHnJRoAoE5bspeVT3jDDYcErCUFEj7mv
	8jYfeD80WEOkrL0v6peGeThcRIb3T4hukxt1GsR12B4QQjggy7Td39L4i/RbR6WsaLx
	hUTJd66tFtfE4P+kKQ34RZNYdJtDpTZLBUd29K1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658888452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5wFmh1Jp69HkRrtgt3wVLH8mVbS2usHH8oGucuEPdW4=;
	b=AR8S/ts2yzbO5FgbA803hoKyB1ip24o1Ucj+KfEuWB5oonCWKBqtikczDfKVMyLO
	oEwzdXeOKO75j7nlhUNeImMUCOr7Gxwj+xS3w7Unc8uEhJ2ZtxyAGpp2NS5U/+15s5s
	JdOzTf0uFCoEY5nGCH7fyihpQYovT1zrjtxOBwwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d74f9d3-e057cf27-6333-437f-be59-5c25db033ca2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c2101c7cc0cbbac9991f5614ba0333e56a340f049985a8c6a63f75e607cb209
Date: Wed, 27 Jul 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658888452
