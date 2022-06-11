Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000D47F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654982039;
	h=To:Subject:From:Message-Id:Date;
	bh=+E/G07sDid4dgv+z0egxOKiS07QRr41jAHy0sc+4+kI=;
	b=cVBU+4bRsGBHpHChUA1+NPwKdxNyJQWSVOlKHGBoIX7ibc47TmQjzbjaMcXNK/bA
	yiD3EU2LYe+yixbATHjIepOORIJDtV89noNLnEzcKsJPcawZUagBuVxnheoNYHC/GRc
	ZAKECsNL0skQg1aDUCjmZdKz8wpV9jMVrH+qNdLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654982039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+E/G07sDid4dgv+z0egxOKiS07QRr41jAHy0sc+4+kI=;
	b=UKVeCi0muvinMakXvDueZN/NkL9TUFAzBqIvYD7IBgCF2Mep0yhbUshYgysEE6qK
	LD9FqLtd+z0YfeCioUb9A1FznMSCHTwJKc3ziDowNM7pmSRaLjMS4SOvamgHd7CZNJO
	0z2/JFHjRjkgFJMZLe5H79r2o7UiqvzWO4RPrN8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181549dd6e0-1d2899ae-9b27-432e-af17-131518ea18d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ecc0d1ece7e316eca59d9b6c04f1d1ea7211fabb01676361a6481cdccb4ae1e
Date: Sat, 11 Jun 2022 21:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654982039
