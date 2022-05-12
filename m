Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFE22F43
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 10:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652351399;
	h=To:Subject:From:Message-Id:Date;
	bh=uHBS3h7yt3eJBnfoHQI/YUTthTh3mbH443ttIbz9zsY=;
	b=KsyYFACOBVno539FwuCpXU+KhsER1QB3/m1F1MPhszyjLZA30AuqRDOIC/t+2l0J
	iIrWH+2DRWpx26GSinsUuVQ0GYm52UUsYTWt2uN/SO3WZI9jZlEVLZkY4+fhz7KAx3m
	Y1QB07ue0os41+Lx+pxnq8U9l+VK+/m1gRBwJO7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652351399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHBS3h7yt3eJBnfoHQI/YUTthTh3mbH443ttIbz9zsY=;
	b=ZIR7XlrQl6Zfj3rl9BQk6VuFb7g7eS5WFcA3h58ScRrArRqlQ25US0dGtFlW6/wo
	oPF2hCYEV2O9G4Iyw0Xy0Mwy9h/pULtg4/uRgLGeuCyOJ4Ks7TBHSOsPl/wAJnctp/3
	q4wxxAJSt5q8et6EOxzAOyNfuJZBpITXK3vSupwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7d1753d-542b48c7-0796-4269-8fa2-5f28b83ea9a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0572d1d0dca883277ddb8d813679402efb2842b556659e35c00203856437d4a5
Date: Thu, 12 May 2022 10:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652351399
