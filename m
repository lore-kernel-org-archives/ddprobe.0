Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1290123C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656887812;
	h=To:Subject:From:Message-Id:Date;
	bh=HPHzLxlHDq0mcdrLI1BlBk01FhoFsoBcfty78//O0/Q=;
	b=iHkMqcbk8PWQcGrz5P5GyUDPo/GHcn5tbNeM8qQcREH6gDhnIpdH/52b9riYVJ/Y
	0oXHcN+LQ+SJJjmq8QIXxvfd+Gl4Y6g99IMmu0rw0KyiStPS5wp1G6fLLceopJKZU3R
	Ph6GW4584AM0YE14d61f3wTFqbyHJsw1SDN8Je6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656887812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPHzLxlHDq0mcdrLI1BlBk01FhoFsoBcfty78//O0/Q=;
	b=AQmtHFwc6a67SEOocIiXX/MSl2vGPgZyoQYYOwzqPQWhlKwp9ZoRY+9s2jZFc7ke
	TdF5fWuafP2RAacBT4w4EJ2dqafV7YgXj+68DP8+O8uA0sR1PrsbYD4FwZ1HuPkiT91
	tCsN++zdRs/NSeCGbaS7dXwkwcZzcj9+5PytiVOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c635a0b1-bcf8b9ed-00a0-483f-af84-dcd32418a7fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 915224c5702e980c36be7b55a1b218c9086e3bd083e3e4db20e4a3f3f3215089
Date: Sun, 3 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656887812
