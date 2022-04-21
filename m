Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20621FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 07:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650525718;
	h=To:Subject:From:Message-Id:Date;
	bh=93kKLRZBtSe35ZbybctAHtxIKgCh/Y4uX1stTwMPN4Q=;
	b=D3PLe6WVjIdydjVk0urXpHQkIaVKSMQYxZkj1YSUqUTl80YmoEA7SeSazB1SvVcd
	8WNenjNru5B5DSHrBSZwMkJnrUKlhzBLj3b0Z3OUl8cQYVsK0ZDv5zcW5Mp2zj4z1mI
	13QsoxP8Fe50D//wHS3USsa8Qk9oQaSpziksx4Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650525718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=93kKLRZBtSe35ZbybctAHtxIKgCh/Y4uX1stTwMPN4Q=;
	b=cx0GwFT237TnZyaJ8RPLfaOdU6h2jyrMrp1OwcOcfJzuTWR0JKSeuRP/EL19R9/E
	iVv/CHLa6OJSUneu1A/uB125wwoPCucSwZHvd1WsrnEAh4Q9gJR/O5YjypRJ5E1C4e4
	0gAIyyOCAxm+qXLC1YS9WrmuVMSaIkpbM4Q2KRn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804affc6b6-f402a1b2-4264-4701-aa9e-1c248ddd9083-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4c04df500022bc88ed4fe7d57e10dcc8942b04fcfde0dc41302ee4edd95459
Date: Thu, 21 Apr 2022 07:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650525718
