Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F819320C
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 23:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652137379;
	h=To:Subject:From:Message-Id:Date;
	bh=e9yVczaJlKolBsm48lT2XGcdSzc0EGhzQudK8bpVtZc=;
	b=kYttok2BZ7U2VuE7gqLPVqFVToK0Z7rtla1AqC/Ew2BQ0wDmfWrxIjoJkLiAaCsj
	4Oqq1IEtNUd3FObNDQo2aILKzE1lmtkUDtfoWCvwvDsGspeysQxZipPMAwMp0BvnF2Y
	0ifvJLpAL13XCxkBr9czKy5BsqXviNAsYzOmqp8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652137379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9yVczaJlKolBsm48lT2XGcdSzc0EGhzQudK8bpVtZc=;
	b=bxx05dbODaQIPuf389z28Z8Ek5lPJdqiMHMQBVIoZkmJEEGX9oGwtiuY/AgXbX3b
	+zQOXqvj2m1P7wc2XAq4nSBaPFjuTDs5yZ+/+bf4e/dOlQfCGi5CzPUmPkwoAECRVO7
	0hNfipQBu8ajCqc6216jglSe2pQeHYnN+0frcgKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab0fc653-028a81fb-e6b8-468a-a2b5-0bc277b4cea9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8da4e5b2585529172be19755050e94f04eea512fb9b9724f4854bef73aff351
Date: Mon, 9 May 2022 23:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652137379
