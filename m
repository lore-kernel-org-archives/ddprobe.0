Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E1A1FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656755212;
	h=To:Subject:From:Message-Id:Date;
	bh=BEERuUOxnTIp3oOKwdGiSAD8p3m0TheZ+zhrXew9z1E=;
	b=csIMtCatYAWa8MCkc+rvsyOqrYWhpEjH3PBhB20kIajBdxzqzShkInWpMJ0SWgzr
	DOR30pOhuCOHhNkl6VT+a/iAEIjxEgTYWGT2irrkKqyb+PqRY6+ynSH3AqVqcZBFcsv
	7x4UMp1kdQ7irIYmlQusD6RtK4y2Qa/h/H4p9Ufs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656755212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BEERuUOxnTIp3oOKwdGiSAD8p3m0TheZ+zhrXew9z1E=;
	b=iWMoX4X9JSadgOZFX5jyjPakpEiH+LRm3wyKH6QrG6szMhgXsU6ij1gbK99LcrMP
	Cui/HW/UTQDzHEkrsN0+5g0Y260W6x88zJ/kDr3NzHQuC3HIcUdxOz21J4guLnqyX8S
	jD3wDaOLlpGs3UWndahpsGZt5NQR7h2fah344yq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be4e5028-f9b4b2ac-dc68-444f-9348-06883b24f33f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60b1ece9e7d9cc0b4a9ee7c17fbdb5744c6d3dd6a1a381d6d585fc5899d937db
Date: Sat, 2 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656755212
