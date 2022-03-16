Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF0D2F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647441684;
	h=To:Subject:From:Message-Id:Date;
	bh=+0onaugwm7tum82h9v/Hppx0macVvfvDjrHS2YLuMnI=;
	b=avuuJBp5OpguryWTNFVhgjqf5xX8dBrgyiZlDkCU0QAUZ7PRJ+p3e4K7hHm0rUMX
	qxwlVVfUyib3HuDrIHFtA8uwgS45pSIx4stvF2gepmeIn/jdoztpAqtFs7O+wbhwbSs
	+kIN9hGC5eWly8NxuDuc727QIZaFHuiJus8eAiJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647441684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+0onaugwm7tum82h9v/Hppx0macVvfvDjrHS2YLuMnI=;
	b=Xmjr2f1vZrRxKk2qFAgWc4b3cecjPG53SIRL9DaNiydacSuH80miYoKPxIvdlBGQ
	wxtvgsEgYjKlzURPJvKt0sxyz0S+hARsnWL8604d25PaZmIqld6EB8A1nM6hVaWWuYi
	LBNBh5k79KwIJXtli38ibWiTviMlkmTiek/8qCpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f932d2947-23752154-c13d-49f1-b2b0-a18439fd38da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a860811f64c241dc2cbc5fc78891504a7f4063e658225ed2392d726b893c8429
Date: Wed, 16 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647441684
