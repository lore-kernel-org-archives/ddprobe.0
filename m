Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811A23B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656923812;
	h=To:Subject:From:Message-Id:Date;
	bh=YTdDKhyHLjEof//hYfjO561BXAjAzN75cNIn16Lhd08=;
	b=Oyv9H5jBc5w2a10I/4BKFiY6AYehURLoCTZGsrtiepN6PgKcK7tEZams2LR+VxxB
	FO6PyswSdpz+Djsw5e1yi23ALxTY1O/Kqm6pjWrfyIZKWuoHoUKp5H+wGW5GHUzU6l0
	q8tT0NopSZRsG5WKaMNWWf9AYd3CEGhDrQvDiXSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656923812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTdDKhyHLjEof//hYfjO561BXAjAzN75cNIn16Lhd08=;
	b=Q4IpIwJV3qkIsE5pxtUYFqS/OVKH5L0V1Ck53wHrv2TMbeyXgxO/HlSNPw/n1Tfy
	kGb79shDT4eycofSmjLQJ2cMsOaBMTMVrGioYs2gmP9joDcOz8n/yjJUs0gfWCtMaet
	L/juPiQhxSJXHUAhx0iw/2E2A+0EBTkB37v0VIa8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c85af1b8-4a81756b-9a7d-4e8c-a73d-617fd56f2b1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ff8c39b6d06c25d929d657e3601c3dba4f44e7e14b9cf2cc55ee1d7be3d0b30
Date: Mon, 4 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656923812
