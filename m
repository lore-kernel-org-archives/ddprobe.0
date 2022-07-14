Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5DF2F44
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657793212;
	h=To:Subject:From:Message-Id:Date;
	bh=Jr26WKtNX2HZ07Qh703dqSNxm6c2hBJW8KwEwZECjYs=;
	b=MiMw/5uREDPYjExVITlAJexnEsb4bRmd2glJR1gF0CNz0iRfZxFsthLOZ9+sYV3C
	NcWnXHnXzfT7uYogR8l1S8upFDbGKtHACbfjmPq9jqBaQh92oHRXYr0UJyhWXc3QfO1
	erhPbJWsbZZ1R7Kl7k8rkjAy6BGzMqOS1KMDZ/fU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657793212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jr26WKtNX2HZ07Qh703dqSNxm6c2hBJW8KwEwZECjYs=;
	b=k0uYIZ4mI0ZniIWW/jMauq+KaKY+5HL8NlZrXJCn0NTCQB4o/B/00/xMBAZz1y7r
	oVgdcHVU2D246bT9dI4QASrI+kG6qkhiLNDjub0/TIzPwXmrWrCqZj7FLyH9U+/UVCd
	hBPa4hAQEO/QTgJvUcZIQzXrMXiXbQ76pvSgfrbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc2cef62-b65cb22c-4f61-4eda-af4a-87a7c5267378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d924754b39d5dee5d08c5a21d1c1368d33c58b75f50732bd4944711fb3525976
Date: Thu, 14 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657793212
