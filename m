Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080F615A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656907612;
	h=To:Subject:From:Message-Id:Date;
	bh=mh5bXXz6ZNAxjbUVn8vyFLZ9S6F7R6mP5+jIsGy5hEk=;
	b=UNj5Ti/IGQ/kIQIXZoVN8vaENo/WG4HbMihTYnfCcYvulkVyX9sU8ODXVjnJQumU
	sg9MjhZIJyCpWV2YbUWsjv1bhNJRB/NSiJW7G+X9hRtpoiKNe9YEKHu8a/g8bFSbuh6
	LUC4mSvEnllyi2AvIrlQRlrb5THBB7Dj7w/Z3HNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656907612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mh5bXXz6ZNAxjbUVn8vyFLZ9S6F7R6mP5+jIsGy5hEk=;
	b=TeBSes8upAQAoE/DyjSH45IhBNR3TxrKJ6qC4nClgYmsdJCU6MobBjVxEmkoi4r/
	WZZouTrptzWCDSAY01AYR+gFyPN9SlgL+1mxYxmsqEm/Gixx2GHXTA+gN0k6kRuSwje
	fkyEeX3G8PDbG5eayARIGi3tYPC9HKNfjsNJFPaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c763c078-79fcf00c-509b-446a-b89c-89a9a695967b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9a41d12cc334276291ea7325602d62f7944b3367b1427438ff3a05c74f13636
Date: Mon, 4 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656907612
