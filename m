Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320CF1FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658006812;
	h=To:Subject:From:Message-Id:Date;
	bh=657nJtcXsctIc4NIlVKsn79x2Dv2HWOlWGj+fLSGbhw=;
	b=XpO8RwegAUbqNQhXI0TWDHLK806w+C5QrcsTQmLNKFImOGs43FdQ7oIjytsnLNPR
	BYBfu6FS19h6/O95OAXAqZOVWExdhacGWhEvOlJ7pqO1akFMG25mSzLUnFlna3VIvMg
	Teb/qCtX/GfcPlSLmwPQHPXWk2enm+GKrEng/HTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658006812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=657nJtcXsctIc4NIlVKsn79x2Dv2HWOlWGj+fLSGbhw=;
	b=I7xP5bB1KfnFg0ICyyG4s6LRmdSVjHjWyuV6PGXs0/1KDoJbyX3ktKjkxwEny0fj
	U90kAy9BVPx4PrAnZkwLAXiuxwbS8q5Ikx5ncWyOF98kTjue1L9pK4VqlLOJpSUoRZI
	cU9ZL56HK0lDSAOvcBs3nVbiDMacc62FfseXWCsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208e836cc-013b0821-7079-4012-9724-0c529f8e47a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 318b6cc447ea7aa5473a91528278cc9b8af12ddca01085626b00a303bbcb174d
Date: Sat, 16 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658006812
