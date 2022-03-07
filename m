Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EF87482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646694385;
	h=To:Subject:From:Message-Id:Date;
	bh=wB+GMOyqsy/Z+6MUUYYbnpEVtwBIALelWM6cRRetbqY=;
	b=W1kw7UuVGO9uOn/FHgk5Ilf8DN76Fl5xgE29ZQiFsYkVBlsSl6vAgGtVUnifUC09
	zEhx0jvvRHpVTSqig0exM+pWEJzhhuMcdj6g3SvZDCM4L0Jd0buto9r6VxU/9A7gCRA
	6qPC4BrMK1OHH1wA4UrlbfB6OZ2iRKbqgo7DQK6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646694385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wB+GMOyqsy/Z+6MUUYYbnpEVtwBIALelWM6cRRetbqY=;
	b=ReWD7/hhLaOfw8PQpMQSEFov6RT9cy+i4UsoTch6ZaFVRa0v7JxGS/lLn8oxkckY
	0B2vgzzzpWZ4llJLUdD3t6aRkYu3R//03HyuDCWfFMIrlmnkQXEpQ3PLZ58Y0VtSCb3
	EatVYb2p6qCJshz80kM3WtqS81bYqs9lPyk5vnOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66a24539-32c83a1f-4d9f-4045-8019-bca632f702d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 194afdb8fef1145c07cdb26502290aa4bd292134f627324c2360f41e73c5091a
Date: Mon, 7 Mar 2022 23:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646694384
