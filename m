Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DC8800
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651923478;
	h=To:Subject:From:Message-Id:Date;
	bh=HJVzczeqYVs7Ij4dXWDpAhm+cRz1RgWfrnDaZPIuTXw=;
	b=KVtG4a3+x48FRo78DRT0HyaShTDN0ADsOflIPlWcEPwq2FbwzRrz8kbclK3xEOhD
	QuDTBPzp+4VZS+1CAqsrQin9+v55zFnTrqU7Hj6WLKNzxrlQfbDtGg7ZCHdGSaona1+
	mtZEe+abvpPG6KWvtMYAEgRWtj0VRK2wfv1YPpzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651923478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HJVzczeqYVs7Ij4dXWDpAhm+cRz1RgWfrnDaZPIuTXw=;
	b=BTDXuLRNvI3EaVfDbVGSTfBqAQU7FxjphVo0SX31+a/mj2KOUBhzCxvdsidzGrq1
	HFaCNfZLJtstfZ0JNC4r7hOCqPGnpanIE7jAHRM+zrM8pEhuMjj4De5pOJ2xQYJWPmy
	BmFNnIHQAy5MxuXDPPAyJJdmGbFxk+pWR9drvK/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e4fe6e0-376f7f37-6b7d-48db-bd39-1334ca8fdf93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b9134bd4b70d2bb904f6b5368a7912abce97ef7f422450993948620c8b129d4
Date: Sat, 7 May 2022 11:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651923478
