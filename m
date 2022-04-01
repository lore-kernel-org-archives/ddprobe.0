Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57267C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 10:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648809238;
	h=To:Subject:From:Message-Id:Date;
	bh=NfMqVRszqtcwOOZaB6zX2chXoTme5dek8mGHdSN2bGs=;
	b=bUo9CsVPgy9D7cJBVC/jzijU4d8sqTNxz85uILHcU2Df4pI+w08S67ydZaWWK4OV
	X/fkEAh/JhHSL5K9HtocLwP8UP4QuBUvVwc1tpKB1vUJ3p/+bhFumatzBZk2KZ/10db
	qRjMr1yxlkPuZ3bIME+v767gt/wb9SbNIY5osgbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648809238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NfMqVRszqtcwOOZaB6zX2chXoTme5dek8mGHdSN2bGs=;
	b=ZAaeRJzJCZ3dGyGNu6SarcSD2a/Ri3i9z8KdYoKffZg7hqka/QUyxaWNh8aqocYn
	ZXFQctUYI9pBObDaDo7uuXCSwLEjQy+YdnopE3NaTyCBCg0S3cpT9zLCdMD0PfKefgp
	vEAUWsufEA3m9SYxyv0fllKIzLyt2TvXrwLIo4Us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4b05ec7-58f80bc8-c0f7-40dc-a74d-1ec70aa4579f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03eaf866dae53fa965c31caafcc07181cd0f9544a273d76ab67d11bbccb2ac71
Date: Fri, 1 Apr 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648809238
