Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD14E1FC6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 14:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649775538;
	h=To:Subject:From:Message-Id:Date;
	bh=7feED0Qyn3w5Q44bmZrZCI1mB5naf1cK1bb6BmXk5zc=;
	b=huUckdqGQWCjXUJEyxEvgs5U0OYRO1+qBv1QuRI63VQS6mb02dbOemlKBYhV+2FY
	FF28ibCY8cDg4rpJm0oFYtIOVM8KvSP+j0vwRG5o6A5VH+0xHdoEKRE9xLJbdn/QAy3
	7q2S0ylqISFJ0rfpR0iraL67h90nN4KgXBbiBiQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649775538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7feED0Qyn3w5Q44bmZrZCI1mB5naf1cK1bb6BmXk5zc=;
	b=KG/88jdm+N4jrH3hDra+8PAkZX8Yy1vlAoUWt2pC1rnUtm19u6plDNMI9FIFttlN
	0Eh1RZk07Fn7DBGg97mr9VA+BepC4aNRj1hvqaHGIUiZr0DI0EJ/v8YNX+OiZY3MKNY
	BkRPRXPLq8qM98VHgOWwgNErf3oKyW6UqoDvhMUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e48f05e-d75a5295-1d5b-46e0-8ddc-0db8e6f4ef69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1014048a6f437e441f90508da35aac833f331fe0b174fbb55ff2214f2d6b2342
Date: Tue, 12 Apr 2022 14:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649775538
