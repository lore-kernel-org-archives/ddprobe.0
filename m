Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053041841
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 11:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650455518;
	h=To:Subject:From:Message-Id:Date;
	bh=1hDtwndODw+3djaIJcfpIS8UbNSelIq17fTg7iqtLIk=;
	b=KEbwA2iA+3rdxWybc4IG3PujrGZX8sforeZkFIJKc8J8xaiSyi4zBWrV5XYTVdu2
	MDM35tgqOkmM7O18X3RLTW7fleZ5tA8FPAKKE5x7oSfz35vxUaHk1/pvYUXt1u04Fg1
	m3Bm/xY46+/BmGRA4WcAJj6w1XdKgEtR2+oX71I0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650455518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1hDtwndODw+3djaIJcfpIS8UbNSelIq17fTg7iqtLIk=;
	b=BxVOGse6Wfea9mjOEh1ik3tzsLkrOsOZNWueqYQ5jGcinAQ4tujjwkat4yfN4nlJ
	zWOnxchJEfAxDt9qMi35nIY2QtFmdbHUNPYtmLjYmoEwLot7YhtfqKBTlj9bEnfb0Rb
	oO27IQO69AjOPFXMl5gQ//bG3ulxz3JgMkv8RDTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046d09c71-ff055c32-a02b-4dc1-9655-8c666ce11aeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b816b4347594a958e09111e3e3fd377ea1378f77267546b7a22d24bebdaed7e0
Date: Wed, 20 Apr 2022 11:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650455518
