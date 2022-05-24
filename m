Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B8C7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 10:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653388500;
	h=To:Subject:From:Message-Id:Date;
	bh=giEAZl8MaWT5haLullM3mRNopl7l6BrfTnQknG/QSfY=;
	b=K3b7HHjecd8aoEEzjeUWuV3w3WsM5UwUsvmKJQfndBbnC4awIk5Aj6/Wx/cEQTPM
	ghhFV1e9ev0mv2ifNCh3eZhQK6PuSaeTXeRzEVb5jIAnM/vo0i4R9a/UX8pdWQBDGv4
	zO5cYxayF4jpYx/EWZry3Ifkg5b0YBJAXJQtosp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653388500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=giEAZl8MaWT5haLullM3mRNopl7l6BrfTnQknG/QSfY=;
	b=hVtK1iCDVBP3DbvCiySOqmmuVU3GMIoUD5ztsJEPJtw2N3AlRyXADLnIVcz9WH2H
	JNyeTrp7ZRqvtSeeT/Ve3yMzIjAehZmEn8R4c3LG6zfkRS9Olas4r1IFwGdt+YX+cQQ
	bzxpCfwcoQ0dR/bjqqpQ4x7Hfdl8e+W6MsGFOtMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5a2595d-60bb1ec9-f5db-4899-8258-2b46bce6e01e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4fc85962dfac53b095dbc5158911963183c63402c6d8cc62ef6f694518068d9
Date: Tue, 24 May 2022 10:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653388499
