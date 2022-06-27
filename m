Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC220E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656362812;
	h=To:Subject:From:Message-Id:Date;
	bh=JaKIs9nyXV1fGBrDGwbJktp6hfdXx6DBY7pXcAj0SrI=;
	b=RXciLQ5FIOGjpPzifHH98mTMRwacNanqAcmQZY4hab3MxS998IXmz+jSY72bqR1p
	/43DP+fiS8D8KRXtXswgWP/1GWPcf4caM9wJuz7uXFQWu70oGTvafm1d9X+kcpAYvMh
	yOxuyrIC02RwKEhBtMTHVTOxzdcRsGtr8aRyhwA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656362812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JaKIs9nyXV1fGBrDGwbJktp6hfdXx6DBY7pXcAj0SrI=;
	b=XHbazl+MH4fR2coKlEBfkG08WVsJaXOqn+owflu4QcWyob/wOxb4JxB1eACooZCf
	CfudkpGn8lmcvd6in4DbVmT+MFyc2ORj++DmVqFCEJOcb+yTHwtTXm2OefLcU0mmODk
	ziohJBlqOyCN+JatDI85wDJ4j1RgHMdMucH9fe6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6eac3c4-7367055a-7a2f-47a4-9ff1-810b19960aad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c83870041c61b9fdc198745911cf8f604ed4bd5537ed78a4c005612af3acf125
Date: Mon, 27 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656362812
