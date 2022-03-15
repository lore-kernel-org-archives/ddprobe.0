Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861BB1B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647328584;
	h=To:Subject:From:Message-Id:Date;
	bh=rgYZxrKw6AJa2Jh29A3Jkb0SXlZ6/H6K/xh57tiJ3Ls=;
	b=etqlOzB+67SQtpjAW5oMlxc3R6n1t9o7llcPI9kxxxdN8O+0Iz3owroo9MyF//1m
	Of8JeajXCdfz4Bb86amqnnXISYUFslwPAYHhSH5atorUAOFWyeqciBIXhOzhNbUPGhk
	RMGRpHeRrQHlnYlv6eDT5eAxGKhdzfWz3jO48ut4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647328584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rgYZxrKw6AJa2Jh29A3Jkb0SXlZ6/H6K/xh57tiJ3Ls=;
	b=O89Qq+vAVzpoeRsmfCImkmBWsENWPP0dBvuwhV68teTuOE+783RxPru5hn8VK5+5
	rUXAqjO8LFjAw2ET2sZ26YFR/QWWxUj+1g66g4IcezpLh39YiMb36k8Um6xIh+vAKOf
	5KGMDYz33r2Key+p2Q2yqjpvYKWtwJUlLPOGzsOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c6f6427-22414121-70f2-47f7-8cc9-8152ed4fa129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2123b7ebc222e3ceb6a8df2f24a98f1a4232b7b968bca6b1e584f929bce8c1cf
Date: Tue, 15 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647328584
