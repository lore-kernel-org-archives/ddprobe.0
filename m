Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A589111A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 09:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654334219;
	h=To:Subject:From:Message-Id:Date;
	bh=c1yci2L4IOwXei4EOLXBjDg0QGkNIYrR20mGizIy/F0=;
	b=LoY7qd4TX8p+LAAylVC8/XUEjjD2atNo8Xj7pBMJdrcC2HE/1Bix3SEYMwGaj9xg
	dGINQDWS4xH4yqMK5H8ByLtpsbvZXSCRbYrPW0s9YXEkKuiNRqeV4nyre/vWcqD0RBz
	y68YZ+z2VVbIiq2Tq+5IrLGC3ND5dxbLSJ4lifW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654334219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c1yci2L4IOwXei4EOLXBjDg0QGkNIYrR20mGizIy/F0=;
	b=iM/TN5W+2vwbULARjlMuy5yzykzY+QIHYGjoKWuTRZ7zkyUZWHqz1DN+wzPRarzd
	0NCG3mDndDSGMvFAkO8K1KQJ2cVPp6QnDlkrbDONWuyqakO6tE9h5WNfXHgt0Aqoui7
	D0Sj8RoovVshgY979mMYByrhLd+Us6PBSb5z9Ry8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e00e400-fe62955d-fef2-4ccb-83e2-b4a26a29d609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96adc872846cb6319a17254734765dfe0ec76c1995cea67725acde4e10f5ba7c
Date: Sat, 4 Jun 2022 09:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654334219
