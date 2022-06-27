Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14620F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656313612;
	h=To:Subject:From:Message-Id:Date;
	bh=zm2rbJgmD9civp5lj3u5Sjlv1oefY69FgXcdgvLu14c=;
	b=AB7BY2AHJ13X6VonIwL/wWZut3dn+FVTYDmKpBimaO0/d/BEPZFCkDBuzBmJxMyf
	gv8qKP/ULGwnqm5K6ASK81Desy//Qe/MRd0mbLZcNMxuHwTfTFe3KyE4jI6bJ+s2fsm
	v9RgUzTyzEsk/iShjN2qxgwRF5tBp2bqz1W5bezM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656313612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zm2rbJgmD9civp5lj3u5Sjlv1oefY69FgXcdgvLu14c=;
	b=ktahcjmLRrigy6FnWMdxgfzXeLGy0kyWKM+zuKdpHNHzrj8AFGgxqgsBLkO1XzPG
	thYkXHyjl9cmrfto5uGY4LLaV/0KVzL+fXKSQ6FldpCnqJaHMlLpIi1fHDQYUjAgT8J
	5sbudBXVKkmIea/N5r++XxAKNSLP6jBmmYMOSF5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3fc0859-6d62c25d-c0de-4a01-b512-5a5e166c7278-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53aac238c7b7fe1fd9096aacf306445a7fdc2681402f9d5d99d9c6e779e8693f
Date: Mon, 27 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656313612
