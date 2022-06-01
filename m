Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CAC2562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 15:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654096619;
	h=To:Subject:From:Message-Id:Date;
	bh=428H6N6e5JuzJcEO0S5OkNSZng+5xFzDXAfbtZ0/TB8=;
	b=J3Lz+wT3g/1HZaAmfTVjdpA4eJVyxUJxJPGSPa0v8MQiHZQxvqN/qnMFyC5oVH9R
	myIdM++IIyTvsEa+J1sof0QsEVWXBUcKece7OVA2trS82rYqDGVng1SwgCD3BZGmpM/
	Da/JKK53Zz842Bryvzm8gOht85SihjTrw/7OGGFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654096619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=428H6N6e5JuzJcEO0S5OkNSZng+5xFzDXAfbtZ0/TB8=;
	b=fUpRcStoavDYx9Rt8AZEtgF4Ht0/XP/GR4I+zlshZW4fLYYZCRCQr3/94gU2v84T
	e0djN7cWENNYmevgd/a5XdVv+WIzLF1CptiAQw+19qM3wtaepGgO/H+9kra4wB2Xgoe
	FNpX89/vTYCzqqEic77tO+EPyqwX/w3uhWTVsFl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811fd76735-c0af6525-d9c9-400d-a44a-d7fa828906c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 382745ff0e29305c5beaa52ead8af467022e814ba33d737ce97cd177431a19a5
Date: Wed, 1 Jun 2022 15:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654096619
