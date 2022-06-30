Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199343D83
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656598013;
	h=To:Subject:From:Message-Id:Date;
	bh=7EMcLurSGEzYtwcVIeWreSxgUhhA+dhJlRaxHyUh730=;
	b=TrEeYubCzd8OzJ1vHV0pBih/61WhhbpZjlrMTXRMdXesIot2vVtM9CDR5Wz24Ckn
	xeawAKNXddw6i1Vuk4F+oHFJqLe/rO9teHact96Esu0pRceNkvMHQ2uSPKe1dI6zROK
	4FQsKcj0bKlesfMieq609RfLaZVldP5eod1g68tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656598013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7EMcLurSGEzYtwcVIeWreSxgUhhA+dhJlRaxHyUh730=;
	b=VPLWShzm24meGcojpjz9ZO3moelSiXyLGP+O3w9ioIdyThYPkG95BDR0ubyPri+Q
	FG5WU00+eG8kQl+mlPkdCtP5+WX/3c3mY35PrQPO1Me7hgIiGjYBvOpXTEeaT0Sf6IG
	l0/0q3a9HQVxG6QQZ4/uVQTd23JsPw4idbaYf2B4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4efa190-5cd71333-b5ad-4614-9afa-2380a9039076-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebcf334d1838a5e9a479c52ca583bd6f87835ced6de66fdd1d08002c905102c1
Date: Thu, 30 Jun 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656598012
