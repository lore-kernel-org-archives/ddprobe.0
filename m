Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435F120E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656300412;
	h=To:Subject:From:Message-Id:Date;
	bh=FHazCvoNv0GCWDkENcsKkjRHD5GEEqfDbky+4whze5s=;
	b=GrzbuXBhxqPwuVZFweqIcOvA48l7cqVu7nwMnFJnFTFGp0LWjdPUKM7pff2HbefB
	UsSkLrNk1x3yktJi3vHbUkCtGaC/B9IiAkLL/Qsj41tHjI/ulpUFCjiepW71u5Dvy7q
	fnFow2theufmjdYC1hYqsT8tMePqmamX//Pd4JGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656300412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHazCvoNv0GCWDkENcsKkjRHD5GEEqfDbky+4whze5s=;
	b=GJ6Bac+Fqo650zKy1nW1eolj0oGaeQCbsYMfcJ0KEd93OCizAbaB0eoO9qapZ8Gc
	8DymVnIAsqPW85PNRa+/MgO7yvLjYUCzuwBm5vl3/0vxh2t+ccTgcdPCpt8KR9rDc7n
	p7hYKgPnYxP3WjICaCFK0R8eoAV8m5XdKzbg9dEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3329db8-134adee1-a4b2-4ce2-a052-daa7e4dd4e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0c34f08f4df7c4ecf461e8511ba673ad0d007697f59759abac3216431c0b754
Date: Mon, 27 Jun 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656300412
