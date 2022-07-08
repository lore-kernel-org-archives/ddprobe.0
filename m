Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E867EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657268812;
	h=To:Subject:From:Message-Id:Date;
	bh=A6/wTIYAdCdJtdBV3vRljREOHfii0AR4u2vL84yhgkY=;
	b=AYWZN+4oUaB78plbujgS7kUITqT8DLJlNhGSOuyCsNaYG/3Pxt0pyR+Q5c6YcqWI
	zxoq+TpwW0uK6GsnuuqorIcCXwoakH+v+H445uVnr9oXO9BKr3mApjXRglL4qEpyI4g
	uLJoxABGOtdfvA2w5HQF0KC4nW5Lev5E5yyjDDsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657268812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A6/wTIYAdCdJtdBV3vRljREOHfii0AR4u2vL84yhgkY=;
	b=NfnZCRtL1VMqEtSRiheFV6QDFf9AtuxLw/W2hrji1HAjXlXaZFIGwmWQEVDzfBPK
	KTevMqjmxxmD/O5kIAdgMMPMiIraEQNdmeiUwgTHNrdQqObHb5nR4k5q3iBbU1XSgKX
	v5wb3SZGgj+UcCpjZhVC9+tbo9ELGIrfeRfmaXQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dceb3a84-f957200c-e64f-4907-b1fa-ceacd7baa469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73c5732daba446fc3d57c558987b42b6c1f18ec2707b7d4cb10ba66248364275
Date: Fri, 8 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657268812
