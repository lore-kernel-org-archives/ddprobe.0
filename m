Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8577E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656958612;
	h=To:Subject:From:Message-Id:Date;
	bh=Sj7ru7+4J41ODhCWumUbH560f7vWLK9E23h1zOwHIdI=;
	b=SN+Fdm1qyhAjp+034DXrLXtAIA6TzM9l/lwE8d7ae30Z5RvjBpMNNq2Q0svmyeY2
	1roP3w4wyQbOHOu4nK1NLKD40KvB2iCq04AVQfPCNYo24JQda37XiM82/U0XRDyu+qJ
	3Z3Iq6ETbzlLq/hNJepQgX9sESawkZy4SKYOo7Tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656958612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sj7ru7+4J41ODhCWumUbH560f7vWLK9E23h1zOwHIdI=;
	b=jAYQA27vWivTkATHMLHHvGuSPGd4SvrUQWNjF+JitfpzsU93uhUTv4nZIn0eVcZT
	BifVuRuGsukSFhIQl4AUu6iCxg71KgmOcr6Dp/GQWnRclZkcbAMcMzfqgz05EsXhSlh
	/5tL9RqgjGohMOM7sG+53uTaFrQLpp6Y349c9yvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca6df33f-74afdfde-c3a5-4e58-a3b9-1903aaef2c88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69ab666741a0f583713d1eacee703c3c37dbeabbe25dadcffdc7f704ea2aaed9
Date: Mon, 4 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656958612
