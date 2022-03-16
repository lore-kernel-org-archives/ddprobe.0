Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ECA7A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647431184;
	h=To:Subject:From:Message-Id:Date;
	bh=iAHc6dr8BatFVbOVt16z5SCNIv8hQ+yUWR/hy50Jcqg=;
	b=BURCK6zF+JMejfrhiPKloOCrsr4Ab2mAwIzLDJP9HZUDPgfRruVYzyDzk+NFGFlZ
	xYYRv+ev1Ph+xYQAIKvZD8PtVLCuzztEIf+yAwiU4SN07m8AWff2wSfNvdc/hpD/nL9
	AH0lZTfZSIxVuisyjCTDba6zWCM2YhHfZdtuDoq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647431184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iAHc6dr8BatFVbOVt16z5SCNIv8hQ+yUWR/hy50Jcqg=;
	b=BSmGFWZ0ftOytWU6ThhR979+sT6xhdWuReoxy1pLIjLnmabR4BR5yoZrGYq5gVXb
	o8Cl1DsY1enWdbX9/tO4ywbGMVGCM3LQL4WAMEofXBu2DylPwGoiq3g59B8eJoyeRob
	5l9E+/Bwo3cznvKEzk6FLlE0eTBA+11bzQLUiQS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f928cf16b-96d79979-5a95-4a3d-9429-d67f6a53acc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04ddd07ce28e7156c1aa85edafc23d8957b23a457a82a1dd2dad6426048d7ff0
Date: Wed, 16 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647431184
