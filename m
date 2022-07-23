Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD167E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658598412;
	h=To:Subject:From:Message-Id:Date;
	bh=PFHabCWjXMQ1XFj4ScRdTzi9gZgMXaOJ5BOLpUg1LsU=;
	b=H+mICiCdq9717xXxLKl0r+caqLycw6M1jHVLx+AVgnyymqs1EhbqtOS35FG4GWo6
	zrrM3EE6DkUq96q4J+qDvkyEUCEANK20ET+OQWMaeN/yhjyxfd6NZX77jKprxjWErJq
	deZLQvA/9JUrCwX4sJLViNCupDGc1RfWr9FQNA6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658598412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFHabCWjXMQ1XFj4ScRdTzi9gZgMXaOJ5BOLpUg1LsU=;
	b=A89eOqpodnY8JojC6lagVuxpG4qz4hC4KiFXXwuv2SZktg6Se2Kk9E2TRIwA0Qgm
	ifo2PKiUHH2Dp7MDV1EjgZwqF16t8e4Nyr9Y7R1A+/IGQmri7FoIDUlqpiR8TcW3Iwd
	gYVDGuVxDHkBZoEb6CE+ODdaq+P0QJcgcs5fj0zI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c2b5041-c2778913-4e30-4709-b565-b5530bdd4ba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9659110e6264699dc24c616e3e83c1b19090ad19f5ce44c36fd1cfff67722dc1
Date: Sat, 23 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658598412
