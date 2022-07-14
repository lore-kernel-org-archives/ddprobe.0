Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6836029
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657836412;
	h=To:Subject:From:Message-Id:Date;
	bh=+a4DZSOYgiedfzDphRgvSquWc80WX8AQTorGzMlALvY=;
	b=XGUelmuWYqpotEbqVyparDVaO2ZWJOGGkq3Ox976nTlWMPOplbmPY2LSvlHbRi3h
	ujk8EdOCxJ376eY0HQSdksaeB5qDWz74t0GYK/nbgdfib4hGI2iewlg2/FGCy2tgdAc
	xHsS/nCpVL9vo7/Wd751Wocf8ONQhZJGIysI7CPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657836412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+a4DZSOYgiedfzDphRgvSquWc80WX8AQTorGzMlALvY=;
	b=keFHdjR9qDweOwbJtcXMWh+b+jes018iwvVViDrHHJUxx7qGxQCC7js++w776Dby
	LcxbpoFAC6ZoBVz5KFc54l8jKE1ZBa0zCpXx0UBNbDokWL6ZTZJzH7qdlj2w8tEXij1
	ge2UPj3G4Hk7y2pO3gu53NGlnQ/itCdJ+l7XS3B0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fec01d66-58c5c8e4-2704-4785-9954-1d24bdd1b6ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08d321b06f995ebb0e2739aba9fc9bef6871faa12d86a3100edaa4dbe1756106
Date: Thu, 14 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657836412
