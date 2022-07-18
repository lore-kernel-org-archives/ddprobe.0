Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD173209
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658155012;
	h=To:Subject:From:Message-Id:Date;
	bh=AiFyLxczcSBxIBD7q969uopQOOe5hJDcJXQaYtPBmmY=;
	b=PZa4qJ7mLHqBfp1/a1Dtuc59zpl4Z0e1KOKUnZYlPGAqXrUd77IQtwZcZk0izuHf
	GN+CizdTume2J4ti/C3k+YkHATUSwvOCVY4br0MqS1HZNq3HF1qQyzhbKavKWq7RpPx
	LC1ZzxJ8rHYR9SENqtTKsStpy2VBtic0omtOURIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658155012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AiFyLxczcSBxIBD7q969uopQOOe5hJDcJXQaYtPBmmY=;
	b=OfUC2cCIYuCg+u0ycWk77rNrJlOphCBuvrQ4IanuQmESIoUVNZeoODAKbRI6dh94
	9C9SgC1BctxTESTGpen7j3soxCuR42rsz1WvmLUT9q8u7/yUnV004NzPnE9K6xU8NqR
	XsQONZEeboYVZUGpANMgwUchPc0RzPivmtD49tfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211bd90c2-e93c1198-14d5-43dd-b08f-d144f984a79d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c02d059da919f1b0f05a536af1df176cd796aa7cb6f2bba780a03891bd2fa8d
Date: Mon, 18 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658155012
