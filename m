Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470DB17EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660135852;
	h=To:Subject:From:Message-Id:Date;
	bh=ifiGXbnLFWUc4F1qmKmeagXrzulYmbCzafshzYtz494=;
	b=Ojoq2IMtS2fVUeKfncLj0VN3mfsRn47IdY1nGzCuGC2YvlLV5qebBkaSUw0l4cGK
	5RbwdbJqsu5iAex531Tu4vXfJirlLzcHsOyIngi3BXK/e+8PeSNs5emmXfFOj0F3pzq
	LtoGgvn3SRJBbohcS2hb2m+IcXyCJi18hJeewqP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660135852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ifiGXbnLFWUc4F1qmKmeagXrzulYmbCzafshzYtz494=;
	b=RgUKFOfAR4PurMijfVtLNR0ZAgjf9sj4BstHvLDk+VJMt+6xOD2bQuNGPQR9FrOq
	dn5r69XRXtqxAyy8uHy7xsK+hwYCaTuLbinPX95OL0Db+mK640YKWc0pLVzFwuU/ocu
	Ua0XO6PHQgpj7Nr3fLxylYeLeZgta6g0q7aTNoy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287ceca4f-ffb47f27-dba5-4ec9-a468-482c51234643-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 654378729690a6ca5e41db5b328608a5471d2d735cf39a7fd81c2540b6ce763f
Date: Wed, 10 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660135852
