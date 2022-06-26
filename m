Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4A93211
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656268612;
	h=To:Subject:From:Message-Id:Date;
	bh=21ssSoJdkpkRsqvERCPry8gXgMF9K/PSiE+ScWfhKLw=;
	b=Hjzf8ueTAJwGVf+rQ6ffQt9LQHqM3yy37CTCOXIHjzQG3RYQZIrmdUEc1ZWH4ChM
	SuAQ6MzEXwkaHpJbQb2Frdy73ZOQtWOgz9MBPFqrXU2YKCa1YEtEvEVsGJ9UiP8Uo6D
	d5uW7CI3R8CFubNbESIScjmNCeF5CTNGWLeHBUVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656268612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=21ssSoJdkpkRsqvERCPry8gXgMF9K/PSiE+ScWfhKLw=;
	b=PK7v9L3EMeWA+364IAxXVpD2L2AhCYxWqdTVVdFydMLuiwo2NRYZo/0IaSgujgP7
	wODZcuf9Iqi03GoVcvhmkUOffSlnJX07iqu1tbF0xdwS0GdyMM5Vzs7nisMAMnOzVJW
	Be2vpuLSJ6UAEEwsMwI/ZD9OhWDm+y5I6t1gU/bM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a14d62d7-3a3156cf-63ea-4ce8-8228-f30ea385c02a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 067616f8b4be8cda1f32e0426cd0a4eecb1be1af1f3e6ffabf2f4beb4fc38365
Date: Sun, 26 Jun 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656268612
