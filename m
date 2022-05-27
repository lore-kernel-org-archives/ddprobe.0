Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973A923A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653686220;
	h=To:Subject:From:Message-Id:Date;
	bh=qSPulj2uQI4SCpWFlha2v93qKI/6wAxV1V75cgPwMfU=;
	b=Mrkj6T0CTUicMDIeU2PK0118siuQWfDgSX56hiWQDYJs2wKdYOjJaA2WeKDi3N5z
	JeCHbCW+0gKGi7yE1Ue02CuvrnHAGXEJ3XJ5dqeJ41rdwBECHuYkH83HuSy+yp8riFy
	xXcOj0R51+ZBe6uiZW3LoBadCquXtEsJCMg9W990=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653686220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qSPulj2uQI4SCpWFlha2v93qKI/6wAxV1V75cgPwMfU=;
	b=jdRA8ISUrzz7R6q3jOFxWzMjlpqyOLb6G3jxOeOE3h1PhA2sLvzYk5Y2b7zRWfgy
	KcS++4ioejwSGXZvvf0aGuJcL97ISZMOAJ8T6ZgrH0pkaHVhiToPz/us6jucg+LZ0J9
	+LfeiJyJq2LO6SgS9/SB/tGgcKHBYEkKgfiET9zA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107613235-20e9319a-cfde-493d-99e2-d6fc0ea0736a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ba5f84a14e93a5e5a0cd36e750a6a774fa8af17ec2d90c730ebf001790b9af
Date: Fri, 27 May 2022 21:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653686219
