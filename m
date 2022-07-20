Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1813C23C3
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658302612;
	h=To:Subject:From:Message-Id:Date;
	bh=sCq54SUlI6UcNrnoEyWFIarFI3p4ywY8Yk9l8aeUDHk=;
	b=j4RWgo2yOpdsDUP5XYyZiqXDCBA1kWzjNvAPLTpW9rX+11sZK8+g84v7Qr4iaoGF
	OhoMLTqDYIcAaMdM9TdpS6SrwVgk6/r0QMh7mXYaHzKFYITFYtY76p9c2RNtV0+QBcH
	oMZh3ztsZQyUv95BBI/ss/svwUtUqu2rVoXw5T9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658302612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sCq54SUlI6UcNrnoEyWFIarFI3p4ywY8Yk9l8aeUDHk=;
	b=hK/gjOVLspN5qYs/xdP3F9+YrP8DgoE+gkq3M8jXWkzsYAOwbjVwoAMcspTpmg65
	hT+RlagBMDGfOY2UtytbP+ySnSeDGDZ8mfoPqoLxWXKzKtI/UTZvytWCW+R+plygacA
	HJanFCjadr/RLuhgiVI+KVizeW8MMn5GwR/4hEpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a89c327-db0d48d0-a64d-4af3-a6fb-7445f4b6e7a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de028574a34f43e17d9a03ae70d3cc73de2ab91a30d6e04ea35fd076e2cb4b8b
Date: Wed, 20 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658302612
