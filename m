Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FBE7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647250284;
	h=To:Subject:From:Message-Id:Date;
	bh=AEqYwxSLhniB7DuZYfiIjOmYUD2Ke2FWPYDS2hLQpK8=;
	b=KzaZ8R4SytobgyBc/E56/c9ovTwMvgz6SBspgdDpKwnPvUpDmV1AXW0iPeZ9xkjx
	qrTI/qw8QLmurxqffCsan9CyPbrfHKEVnL1kWNIr1cLob6hSGrgsk+ug6crhmrHuzdG
	PZLo/PamiuUNtcAEVZ61U5D8nlwKAB5hUMfiSy9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647250284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEqYwxSLhniB7DuZYfiIjOmYUD2Ke2FWPYDS2hLQpK8=;
	b=JBpxmqM8Ex0Vzqe8Oj+wK6Lnu6zlA0KhiOSzsLENl9FEtvUM05vKgDanbiNlBUx6
	s432dxfhYKL56Tz31sZEzxZswBsgt7Q4KAbW7RBhwL0u7uccVumG3FiHgnIrKT668AM
	+Uta0HUEuybtY3WVGf3lt13GAyLDHf/G6genS9J0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87c4a0d7-533b1fc4-d176-4699-ad0a-337fb64d2f4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6cadce040872a9ec55cc4021b363ff9beb670788d430193ed33fac5c6b19f6b
Date: Mon, 14 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647250284
