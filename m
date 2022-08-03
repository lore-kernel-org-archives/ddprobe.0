Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E512115
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659549652;
	h=To:Subject:From:Message-Id:Date;
	bh=XdjohTa7illLRhfzZp25eV0lRG79xDphlK7t4kLMtiE=;
	b=dQI+6m9NekcuQJT8giIOdZziuz6ie+14AiMnhzklBu4ib5R1Z0/wwzoorqAo5IMd
	qla0pQ5LUQmjeAvCXhxBxz5pBjFQ+V0hTzQOmZctYL8lTpZpsTrqF3s/IrgcqjoJxcP
	s7KECAYhaVrwxt6IREz3iQBRsLaRsXxNRqpy/bC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659549652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XdjohTa7illLRhfzZp25eV0lRG79xDphlK7t4kLMtiE=;
	b=iJS/eiXlpN6xcLiQrDL3KAZEjKwKPo0lGOtcTxz4ieK9DUqNMnvXEz8QimAIjyHu
	+zg/Lv/7OjMAGIdfgT7Y0u0NTPK516pzMRGRgQrAJKqC04prG2V9vZ/gOq4z3/hnwVl
	7ABTK0oIiDhhP7X/MU3nEZJx/e+hB6R6f/mTTP5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264de1659-ec53c3b3-8050-4e33-b108-12dca752b618-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d46db4712d2f481dfa03696e0bea52be17601e7193f07414ea519f18bf328ec
Date: Wed, 3 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659549652
