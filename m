Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7716C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647964585;
	h=To:Subject:From:Message-Id:Date;
	bh=g4wdw/dL3KDxqf2j/ZAK8F1+6sY+7Q6dP3RJYa4aADM=;
	b=mtvzXGImfOyvHfWza5WRyz/qAPxU112gmQy+XIHeH9zgjHH5iqqzT5nsEEUrO7Cc
	GEHaNRYSnh6J72blRSe1s/WnJ8Ky16f7HqWN422SkLN1NnGA37vjohn0x3ZkZdoobpp
	JTi0/0rP/bRbIWusLL4wR6ByeDCAf+CB7e/eyo04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647964585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4wdw/dL3KDxqf2j/ZAK8F1+6sY+7Q6dP3RJYa4aADM=;
	b=FGOesUtVI68kz0F8q5JOrPDvYMqb+dZMbPYGCdSPgVNRVRr/ZocxYNZdvrBAhJtB
	RCptpGqp4SUieaKShnBHXqPgu5yyFmnD4deTLXB+oEtitM4DmJAA/bS3c+J6URwuDAo
	G4NRteBEJLr3hZo6z8S3A+Q/UJySP1DY/BooyH8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb257fb0d-67dd86ab-93bf-4cd8-ae73-b6ae029020fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3265ad87604d094436a79bce60a40f0b2335eccad87d99c612d01d406c778573
Date: Tue, 22 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647964584
