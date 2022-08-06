Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01891869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659792053;
	h=To:Subject:From:Message-Id:Date;
	bh=Cu1MKxKPvWJYkjkQBnrPsgYqyUdQZW6utOeEUIMVlGY=;
	b=dpd4sl50Bgi7tBlzVNZu/V5Mk4L8nDFz8vhUOSpEuXhP6DRbs3uh5W4R8D7zJ9fb
	Jz0yzT5C4saK3BUvuoBzIduybsuv34n/ptBkBG971ZJXasX/bIpzxhcch0bNgMEcjp9
	WefPNr+q93npVwoqJhO5F5+aTPcx1tkT3XTXTeVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659792053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cu1MKxKPvWJYkjkQBnrPsgYqyUdQZW6utOeEUIMVlGY=;
	b=iFRz97Ti9aU7nGwMMzf21NuBrN3YWWiIMn24wt5gQMyd3pE67a6qFHrLhMt7Katf
	LiRXVEBKj2UOlBSiPyCdL0M1xyva+3Nw77p1SXyzCuDg3ca8EOLX6+TxT20dLCUWMpc
	09vjFEgzBPb6l2M5JSjXZXP8qkB3DTGjW/I0cePU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827350d185-2da17c0c-7c38-4a1d-a765-bd7b8a9d173f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53322f550587a6364827530c0d3abb5c92c8e39d7b1343ee70e624f75e548819
Date: Sat, 6 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659792052
