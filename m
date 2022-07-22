Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A1415A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658475412;
	h=To:Subject:From:Message-Id:Date;
	bh=nXjd3+2DsiBFggXZQ7/2lU3eKPFSjyChMMW0UOrLeXo=;
	b=kKjzgYAtrSCvri4Hzj3k6RrSuuNO8804t8XcjrF932HzTQrPcQA2E2mNG5DJjc4t
	Pnvqz02Rf9dUalO6+qDQqsAZ8toyYLLrlRxPNp3Leq3c1OhCObLqNPz2gbZN07FOqk4
	MUcjKm405rk/7EorZSM4PTw8wVcXumvs+NQyvErU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658475412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXjd3+2DsiBFggXZQ7/2lU3eKPFSjyChMMW0UOrLeXo=;
	b=YoxIeULJ/mnYr1eCFu9nMP0LT2Q5Jh7tFyv3iapLa0UE0AFkWgU1VFRSuM58xHdl
	Qas3zxF1PJPKZy4gg09y9aweor9StkpVrwtDvUZ0zcp7+1KJSJFwyB/2fe3R/b1/n8W
	qhCcUQPvnEpRkYZLftrwMY8/BWcKH6dnxlANKg9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224d67b26-05e46580-239c-41b5-977b-891edc702576-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51946a09aa7a6032d7212fcde4d995009046bd2a82733f16e9aa4da26ea7df9f
Date: Fri, 22 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658475412
