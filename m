Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7EA6AA3
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657580812;
	h=To:Subject:From:Message-Id:Date;
	bh=sZl1B8wIUqfv/jJ0qYDiDnIE+PfC/c4VyW7Vqw0vVTc=;
	b=k3ApFWpZRkeWG+SAotz1iKKTq1UzhkP5KqGmiUioSeonYzPjhW5cBENmMFj0FJyQ
	Ok1gWj6a7+FQW+fUvWpf6TP2Z6u3A/wAwf8WrmbmqqekwbwSTV0TFub4nlNwgQEhApw
	IRUjUrmV8xwCt9IxI/JvdJS3B+faffiVJ9083Gpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657580812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZl1B8wIUqfv/jJ0qYDiDnIE+PfC/c4VyW7Vqw0vVTc=;
	b=VwKVF37MOraNriNcbUNSSDlRJU2uApX0ZWGUoM1HSN1OOE+Wyl7XnRg+3aS515X4
	s7l/K/ByzWhMuIG4SKjuDXsA2N27J8ELVa/9tzS+yOLXBrJ7imqkDwLbo1+i+FoqA70
	fU5/V3x7P19BV0YusfNNtRAoyNY2FVIIvCqbzzQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef83f811-e7312637-f000-490e-888b-f5e29e8dc404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d31ba5f24e42a93e4e477d916fbbd597f9c99fc3e14880b2249daeec8ce4d6d
Date: Mon, 11 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657580812
