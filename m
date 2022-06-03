Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562ED7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 04:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654231079;
	h=To:Subject:From:Message-Id:Date;
	bh=1ZbcsnXKG7W1The7JwTZF8W3PqTVuSt6yhMogGY8334=;
	b=I0Fye3gVOq4niPioYgoESbH1SSh3A6EFnNy2mN2EVXcpq1YVttUk8d+M8R54zD+Y
	TbVc7mil1SVa7AvtKp+uTljD7C3QePH90YTvCJNARAC3hRtTwz7Xv1F6xKEGF5Bhv++
	DJNy+mttR9BuSziHiJHEduINw/BjbjEtmT+KokQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654231079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ZbcsnXKG7W1The7JwTZF8W3PqTVuSt6yhMogGY8334=;
	b=Sc1OvC7MnHMG3nwU6btRIKsJMpieDtP4uYcxWQ+BI4Gnl5GoPsI+mTbqNjKAUllE
	CZ0dUZE+29Y6Njyd7owP/h1fHoCAUTDnwqqWunw6q/SvleFkBhOliC2bxhx4LzWT1XN
	///eu7NB6EkOI0dO79VWRsJGapU18HEwuj5DNk+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127db1a15-d1f254c4-69e0-47bf-a2d2-e02744eb6351-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b5aca4ac6b2d81dfe67f4a6a68a270f082afc6c214c3ca8ba3631c034136754
Date: Fri, 3 Jun 2022 04:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654231079
