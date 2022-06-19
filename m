Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196FC7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 05:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655617319;
	h=To:Subject:From:Message-Id:Date;
	bh=Op/taerzCgHoGZy/bdx7bbeznRpEWwkjuW6ybxsWw7E=;
	b=cNweaOZ3b4kkc70mP6Bt1PKH+beuASGTotfl7Jpd0UehFKy9z2p5dXeCEbFb81ur
	1AQmV4tS7TmxFNdMUpkMSuWKxVyW/JubihL3U1GdLUgrC6dHP22/ITAW6Xlx3H6UGiZ
	t5JdKhwU/DNn6rEtarKnNmbdxCJIph0mQyl901Iw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655617319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Op/taerzCgHoGZy/bdx7bbeznRpEWwkjuW6ybxsWw7E=;
	b=SP1i3w3rB3f3I1VyLN/ZRIvUh7YyRxGsezm7zQQHRWt+ZUpxdJLpTngc3FRi+Gct
	/N61uXlDJHdcdoL+k4FPapL9AxU+HfzBahd0/i2ScFFSG3AJPJ9M0or9lb1A048cmNn
	RQbU0fNdSxJ5y5A+dXFY3N92vCfGUhh2sZiu/Of8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a7b7153-171f9abb-dd29-4e63-ac21-b0711f259928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69e1b0065f1e691247afebe683dc229676b0e690ab7031a3b4314567ad446aa
Date: Sun, 19 Jun 2022 05:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655617319
