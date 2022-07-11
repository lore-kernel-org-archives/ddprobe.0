Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DF2F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657578412;
	h=To:Subject:From:Message-Id:Date;
	bh=ShmH59NTHo8rxtx9XasWhKmB/WPEgBwMti8mZzFl2fY=;
	b=BH9H3X+8VEvdfzDO8iOwbP1PloRJ5H65CGpNS+1kMYIx3q0n6YmeUKyqGYZEL9S4
	jRtDs7c8zZHa9pKE5JtFd2B7vcxyrv4DRY2WVnDcK1LJxKS1u6q1a5vO0hA5vccu/Wi
	o8mQZWecYdufvZ9O5zlvVyxhKfYQMcHso0aQKPFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657578412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ShmH59NTHo8rxtx9XasWhKmB/WPEgBwMti8mZzFl2fY=;
	b=jtqRVbbFwmD//SBEyz/kClNMNVw5vHGqle9KuC8R1SwADdp1cslTJT8AY5ZMH58i
	8vcIBP1fGd8SOIQgkcdyy9dUshXd1HpH6lXB3GB8XQ05T67lJNnIa07tKvwLBhbHCH+
	vtYoSGxQx3af/NkuPirznEM9HduuarNdXfTqDwzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef5f5935-24c2dcec-ea47-42d6-9b77-829da1e0cbac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66a9bb3bd31676bafc00d031aca2c18889bf9687cd025149538f29b23e7945b6
Date: Mon, 11 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657578412
