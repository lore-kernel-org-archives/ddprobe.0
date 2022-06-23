Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B191FAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656024412;
	h=To:Subject:From:Message-Id:Date;
	bh=8Rz9ibNx3MGU2IkVflTptqqL0NmmN74ruWHIcQRVWxI=;
	b=IOyQP7Oy2uFHH9x3R3XACancigA7CtEcIkTapm7ScSibAlManYCEBptz2nUcQauO
	E3cvaKZP39lgT+m2eUi5XTWKgUuPVgVHlcErVGnrWGKJ/ZlsljaZPsWeF4KhP/S64Y+
	zV+tQ6aqiP2iYY8rPhVhVIPCtuVIEaXfso0CYMFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656024412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Rz9ibNx3MGU2IkVflTptqqL0NmmN74ruWHIcQRVWxI=;
	b=I6VlOO7mjkQr4XfWAA2gP3QSzU7xBgb30h3dCN89VuuNMx46RUtV3d5mufRt0PMm
	S83oXXYE2BYXtkxsfv+rVw0DCsz0/MQF+xLARVFj5x4jJhVZO5m5TEEsNNW2cyOc0if
	HExpd9ghvaXnie5/G4BVjU27HBKIqOi+8WFmFW2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192bf308f-da14f27c-a7d4-4e05-be2c-5c6889b1d552-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41a1a66af711f1a73a8ec2a770998a8a9deb541701c9b1488596623b5ba6fca2
Date: Thu, 23 Jun 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656024412
