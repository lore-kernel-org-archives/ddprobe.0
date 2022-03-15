Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B2710F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647309385;
	h=To:Subject:From:Message-Id:Date;
	bh=O33J39SKt5oWOxyemncIXo7qT7vk7RHTqIcst9Vatgs=;
	b=CnQOdHRB3hdrLE4eWLt60Vvbs2Xeo8kHUj3N+SiEvUETRyhUDXuGKMEghDkfeUqo
	82Vs+NyuhLx6BoJpyGd2+TMDsKiccs03xxfmci/3bqCxNr+E286YNYJZLoYKGbRlVO0
	LDVLy04udVHv1hf7WXDsNAX6sHqv4ULVwT5SJuk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647309385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O33J39SKt5oWOxyemncIXo7qT7vk7RHTqIcst9Vatgs=;
	b=Hcn1wBubSpEBeEHpDjp1o/JQCmwpm8epW9GtMt6ZuQ7k9bnJ7wd/JvM2C60HlMZz
	ZNc5d5pax+cUxec7Wh4wLMP16Q1L1tUT1eKXLmykBAxmfcAJ22np3vG7XK5nBl9nL9s
	O1T4BlMhag5s0g2AMJD8WnGwt9XONhiCief/tpP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b4a6c94-ac540df6-e845-424f-ab9e-b81a03404b6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a84896ed281cd3ec1b9b26cbd387e69496ad97e38c8bc9145aa69f36f8d555
Date: Tue, 15 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647309384
