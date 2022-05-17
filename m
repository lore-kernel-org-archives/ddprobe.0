Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB31139C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652800079;
	h=To:Subject:From:Message-Id:Date;
	bh=KoAvIyJIBZ8BsLT0SSMlO+f/roxqJIjrlVxnbWqMai8=;
	b=hhIc9fMIrPG02GnFrdMpEoUEruF6NeCkhV04j9gqUKkQ0GXfOctPvZDT9X0gAKZW
	uCwo2kyiKoCeYj/7JJqX+XlluBns8kSoIVhkWubhm12s6JdM6xDif7y+Kt1k9K+Bq23
	QfrHZi+h9utAmqGyArgVxPDvlWTLBQjo14pOxhII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652800079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KoAvIyJIBZ8BsLT0SSMlO+f/roxqJIjrlVxnbWqMai8=;
	b=DuyXwg3IJQ5FlibixfTSViG71YtU17T1vQCQuqlZ06qzi71hIf5lrbrYORS368Ct
	93fyahOHBrnxlN5yuZmsartbKlLeht2QMaHhdeRQ9Tr1Q4cXNY4GjfO1gsoY2jvicRx
	4ATMN2m3m3gx5ba7BhvOE/A2bfrJdQklAu33Gw6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d28fc5fd-5a413e3d-4d96-46f5-b893-c4b96065615e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f757feb7a6a49fd0b43330930e9863838ec0bbb65068ec180c0659e55d7ca307
Date: Tue, 17 May 2022 15:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652800079
