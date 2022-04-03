Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9201023B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 22:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649024279;
	h=To:Subject:From:Message-Id:Date;
	bh=HcWSEGuD6WjUeAE/5M9CWAKP4AjzNsEYqpTdQBuUddo=;
	b=gZkfrFXudo/xUh5T9diU/14zOhFkHokZECTAkZf4GMQdxvikcHlbY2bFF51ua/Z/
	sHapfkggXWtUVbwGGUS8rdfRAfv5jw9RN8B/JI2her7IfBL4HmDXN7H/NErmyRmN4ex
	oNblTPrrm3aLmvqm2RhXrhVBGSAKUr/KxiTZcoQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649024279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HcWSEGuD6WjUeAE/5M9CWAKP4AjzNsEYqpTdQBuUddo=;
	b=Gvwk4/+uMRvlLjnbgsAE5Ny8skTOGtsbtvadsywL68snDo25IMbf9Is6C5XUKMwm
	GMOQhC1WVq2G0/80IH1Da9WtHOmbFJptJn3EXNV/Ag3HdQt9Z0GVXm0/K6pEdgB2/c2
	eKpa48gsyFx7N8qXsnJxRDlcEo23p97NqcawxGRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff1819f29-985d162f-2336-4034-9589-125b02e7b7f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e2bf736d279ca27ad778538d3f57831d13eb2e0d8c48ff06c6bd3e842b8ee32
Date: Sun, 3 Apr 2022 22:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649024278
