Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C47C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654628759;
	h=To:Subject:From:Message-Id:Date;
	bh=yBVsdyxCy75uQs1Klpc2jd+uveViQiGDrbDIZuvmo7E=;
	b=lh6tT9xBix4/wcqHV9J1MuTi7yrWK1U6c979IlfGvWgV4jeL4VofAmzqjbbUIs4l
	V/dS5pRGtujvdBte0aDTem33TetSzreFTBlGHbsd0IUY3nV/okODxOFJ2dJcgXaB83y
	IamhpGI/8eF9eGpjSIdQ7oSrulNfk2S6ZEErbr/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654628759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yBVsdyxCy75uQs1Klpc2jd+uveViQiGDrbDIZuvmo7E=;
	b=BTNWdRJVKoxLgsM9damPZcxN2HrVFMqGjQuloUdI2ukX7SJj9cXr8Q/ADSUafR+4
	6buSI6TdKUknrCYMr9BjNL4G4jvaJ7ktrrWH6TLt7HolN+3cG2g5iL75/Z/HdZ6ygO1
	wWOmecgrfnFh9SM649rzcU5xSP90P0l32cHF4XfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f8f36ca-71ecf39d-2287-4cce-9e6f-3dfb8d9c775c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f9e2ecc9c0743fce0c415efb31ecd48aa3ca2df70397ed0452a2b602b1d45bc
Date: Tue, 7 Jun 2022 19:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654628759
