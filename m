Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85887C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 03:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648438739;
	h=To:Subject:From:Message-Id:Date;
	bh=cKuVLrtYKTxKF1xhemjc8m8TJedEzB7bQw9I86krJbQ=;
	b=A2dqUfMAK45jLP5802ptlp1GKfxj8nnPOseJ2TDspvZ4edmh120yJdh27znpinUs
	hpPrstIKABF6XRllQ0OcVqkBEg6CSmTzrBgowecf1zAwq8kuSRYgXIVqel0tH607EWI
	fJlgzOj1SrWvA8KVrmdatvQx2+XMH3q6N9UTJ5uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648438739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cKuVLrtYKTxKF1xhemjc8m8TJedEzB7bQw9I86krJbQ=;
	b=a1T3uPaCV0urM9/PxGWeHW57swBTKzQ0AwFzeZq8inRFcPg/umix/CqEBflC600u
	3LkMwdTuHGnRSbHwurYfADn9VVt9/g3qPfWLm4QJ3VtM8lhMQRmxco/45zJxsGNCZ+h
	aenfwRa5yMTjzAovHRAJZfFgu8i+Gded1aWXxpRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce9afd6a-c90f7552-4463-4507-9bd5-270ded91cb8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c44fe23ea70dfc6073ee0e6c2acd000f5161466cd20e0055903e91811eed885f
Date: Mon, 28 Mar 2022 03:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648438738
