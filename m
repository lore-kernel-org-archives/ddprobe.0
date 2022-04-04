Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F79723C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 02:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649037778;
	h=To:Subject:From:Message-Id:Date;
	bh=y7wmPXo5IUozLSIaCE5FiDdq73/3Vd3F+tsvhmLA/FY=;
	b=LXD6h1kF5uDXbNElmhXubQpDXiktsG6ufLT/I8e1N+y1RFfKDAYH1XmQ6l39Ba8r
	JjJfk8zlgSP9rZfwqCYtVsC05WD68l9vLPAhDJuWUMFL7hremjSTBfc7RNMn/mAyGW6
	KXd1FJ5qfMun20gVWIRtbdPvquMCsX/air8DN+W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649037778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7wmPXo5IUozLSIaCE5FiDdq73/3Vd3F+tsvhmLA/FY=;
	b=TxuoPOj0WpFMwxhNZGmOhts0RLQ7tgaIZbYMelVZsGYX7z9R99olj7QBiVzNDc9S
	EZxyCp85laC4o2o3iJCaWSRUtY2qGHwHmcMPxxqnHZEbcRWZC/Hs7GFWike59v/WuYT
	72MOQw3y91znzTgj/gQ6scJaDYlQNocGW9fJOT/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff24f9d9e-da15fd42-3d99-43ab-98dd-59f19257f2c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbf2102669654ff2235db9ae95b6ceabad4c9fe0463da4f01abe053ede39faac
Date: Mon, 4 Apr 2022 02:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649037778
