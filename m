Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A7D10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656641212;
	h=To:Subject:From:Message-Id:Date;
	bh=YPnZRdAWYZl3rLp6xYrdlVzYOXts2dhijQbV7gkbqwQ=;
	b=CLZZPsQ0iJsy4fpBaRNGaXnRw47CWpgpjbO3mwRQ8ny4heTXnUP6igPEkbvv9KkE
	cxkx4OWm6/xUr0IyNbpU7HjqTiu6O4S9+hdncKXMvI/klI4GqKD5sgIs68EPK+mob3V
	HFaYrq4n/haP5MRvINW4l5MxJNMmJHrn2OQiNlzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656641212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YPnZRdAWYZl3rLp6xYrdlVzYOXts2dhijQbV7gkbqwQ=;
	b=PIDBA/hW7vu3HZCWAVLhbeWSTGvM6jFTG1aUkuQ75DKa346Nvovsu7/Xk5Qj4uvz
	6+PHrQ9yl7E/ySq31S8AXzdL8ZarImWZQHT2Squm2UFffKUbuaB3WfP0AYWbdV0/M0w
	D89CIdiPoce9UKGrOYCHHw/2MCUlkHGQQaby+XPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b782cf73-7fe6e990-a841-41b4-b41c-1d2cd7227351-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efed332f68db530ce0d3f3dc7fd5dce3c01c71aa4ebd17cc749c5997ee29d75a
Date: Fri, 1 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656641212
