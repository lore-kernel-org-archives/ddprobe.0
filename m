Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4951844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647322884;
	h=To:Subject:From:Message-Id:Date;
	bh=ELfPO4RmHPeSdFjm8GE4yx+Umi1VDHFQ1Uekb2k1kL0=;
	b=I5djLrgOTblFvhh/N5K40NKK5S9197ZElnDzXBQG5l4yKNWEpgp7AOGQAID0oxoN
	eXsRpiwh0fSOrNc6l/7AgsJ2DFaXPRhUvXoTv0McEFP/6Q2TEsCTi3l61W+Cen6KaV9
	ARNenxBghMA+GCYBXZ3AhBF29KSKetei/sLKvE18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647322884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ELfPO4RmHPeSdFjm8GE4yx+Umi1VDHFQ1Uekb2k1kL0=;
	b=Erl2Tjzf7PBpgat3WR3jS6MDnepoZ7GJsAsTN44sLVI/rRTCzy8etKV7ErD1srEj
	T45GeDwasGInqP2O+TstnINj/9VLxe0ivYG+4p6/Ge3PnoLF3u1GZEDD8oC+BatbQ2y
	fFw4JDksmZPV7+OFu0pKhTmLc8NA80i8XzEli/ow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c186a81-69197652-da2c-4531-8737-bb2acd948691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2712685437568f43db71e4789247105cc6bcf0653f165c1409f3ff6f7296edf4
Date: Tue, 15 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647322884
