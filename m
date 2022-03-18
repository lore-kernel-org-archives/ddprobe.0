Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDBC5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647631584;
	h=To:Subject:From:Message-Id:Date;
	bh=tuQIvY7eUpZImrxw9Zc2rMg12F6vFqiemYYbVQmlaGo=;
	b=GMnWA011zne9vya6HhAVluCVQdvqw8nrWPh9k0PjeWhFGxdDISW8bYeskzO00MZb
	96ejvRT26z9BH5XKp0b4Al3CaEDPn+LbgEcf7nDssWSyY8dLd8Lt5CY5EJ5fkdMRfw6
	fvru0vB7oALKEVdeI3JI2ig7C7wpsLfl2Sk8PSG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647631584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tuQIvY7eUpZImrxw9Zc2rMg12F6vFqiemYYbVQmlaGo=;
	b=JCy4NuRIeGB6uum28LIYywQGZOJCj6z2JXJU+0TsB6PkZATttwEkJ687SN/2OrDf
	axAqHVuTXxAD/0sPvMbrOB4dHCgMlndgDWrjyjb0F2SF+bhfuPgFtRi0OEQGOGyb6uk
	UZmsLon1X8s+8nh4i/BThEGV+wQgOt1cLpmaCFTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e7ece0a-3c394f93-8179-421e-a30b-d65b545c49a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ffdcb673cdecea1b9216b777faaa46632d8024d4f2d74ed2918d6063d6db7c
Date: Fri, 18 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647631584
