Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCD03237
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 23:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655766539;
	h=To:Subject:From:Message-Id:Date;
	bh=d58noTaH6d1tEoRaM9N5DMuZK43q3IH/Piqx+jQkBB4=;
	b=G0iMyVYNbwytDO/W7gveICb5u/mB6EswiKtjU26PBAHt7A5lfbhXLaEWHVcfH0QO
	t16ZzchmjJkA4CGOsaGPtPOw2ZhwLcO/eNi3jXkvBN9ebcSrspN8fS0kLZ+DiNWQ2Kw
	WiB5S0esYO7R9RJl694NkY2BmH0M2DJopPApGbKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655766539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d58noTaH6d1tEoRaM9N5DMuZK43q3IH/Piqx+jQkBB4=;
	b=NSRPfUAQrUVCzUZl/L/Ev8VnSlnLfT1mdf6ahUyEKqJjiTP5HD8DUOfNiz7gpLhE
	Lm36sWQPxEbfPPdWoD1w+Q9kLBjj/e4ZhDPf92xBsSASwJgVpfJOtQyANUFxXeH1/wR
	S1Y6r5pK7K8KV1T2YaDu9OutUVUeGBGtTTOQeVTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183605be2-e6556d75-31e7-4235-9b12-f4201ce6ce4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f0db15d0bdc6faf0505ebf2f9cc98915f2b6ab33ab29663a7b5696b84e54c3
Date: Mon, 20 Jun 2022 23:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655766539
