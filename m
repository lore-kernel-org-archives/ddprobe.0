Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226877C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 12:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653308639;
	h=To:Subject:From:Message-Id:Date;
	bh=nZAdLlz0b2KHUtLuNZMnG7DD+TXwK7Aa2WbxbLqbq4U=;
	b=M+ZTd3yReu88HOPXBP3ptvt/WK//WQT6R5R4irultitg6zzrGFFZydcubHmYS2ht
	j3q/08HyXt7Nzcd4/otXcECrfhRRNzW/avsyJqm6bP1mB3ZYSLM6LgtzCh9aSgbnh9r
	KztcVzMeCkyenNgagzHAdb+azemS9xX8qh5qXzAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653308639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nZAdLlz0b2KHUtLuNZMnG7DD+TXwK7Aa2WbxbLqbq4U=;
	b=Pv/hgjb/YYUbsn8oMVe6Mwe1hgybEf0mYo3luGbSYGFJGDObUwgQoNOo1vsep55k
	z72lS60UI3evSkHj6ryjC26+itOrK9N0mvlMygYBayXzusej+o4qulBUBlguhZy2w0O
	N+UpKoECg3UFNPTkE0sG28pz439ksRLDdRPeLyq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f0dfc823-523e5d1f-a75c-469b-aec1-3b0c10015ca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eef6ecf0f3941d0e65ac4cf3b762f3bbb0c2d6420896538b47ff507783f4b8ee
Date: Mon, 23 May 2022 12:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653308639
