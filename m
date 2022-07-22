Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E026415A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658465212;
	h=To:Subject:From:Message-Id:Date;
	bh=pXBj4ynKwf5ppXwDE5fsB0DxUqyl/xj+WEFy9PCKkus=;
	b=EreThnv+4yZfzNXBd9QW/EBR9ZhsqGht8kxKRVV2prMjS6VZYZv2ZSvsG/d7haE2
	1cR8/3puBLoUf7gVU8DxgMI2n+hVF16CE0k2Gvj4ymeSYVhGJyZ49LJ7W/wa+GT9jKb
	CUSpn+3x3ZD2julGVED31p9Nw/RJ4H8uZoIaau9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658465212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pXBj4ynKwf5ppXwDE5fsB0DxUqyl/xj+WEFy9PCKkus=;
	b=ElCGMXG3V1li9s0Wj8SAFa2Q/sjAslJ4HDvFlbDZTrLeCO0UWj2s86Oqv7oDNY7V
	e6/r1DPVpW87hFV2t9B0N2vmsDk4kpcE/9tVCT216awALXNuQ7hg6JGzrp/eAwZhKfy
	gzSK27lO9kqoEWOJ4Z/4gI4tClbC1szew97kJn1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182243ad76e-1fed4dad-b734-4009-8b61-93b48b6971cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c63867654d62d83e43ec945fcda1bb52317c05043d514a7b1b3f1bb0b22a606c
Date: Fri, 22 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658465212
