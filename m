Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0AD1866
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656733012;
	h=To:Subject:From:Message-Id:Date;
	bh=jgo1MMNG4vz32vNI1YnSKBQEuyiovbuPx9uLgM8w7xU=;
	b=Ry3dtM8Aghe4M33kouuPYwiuUz4y4md8g1Wu3LrdgZYioh6g5atiQSUt5dhy275T
	kXNXJikrBNepxssJnLSYOjoiVeSUMrWngByf1iMUODsepDZPzmFrjGrWgCs4eai7X+g
	MeSLQ1ETh6M9/w87jlw+u+QUtOb6B6a9Rcrt5eos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656733012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jgo1MMNG4vz32vNI1YnSKBQEuyiovbuPx9uLgM8w7xU=;
	b=DTckI1LUmz/AHr5mFR2eeK+XIBK02HIP+16AEIU5c3308DcgcSdvCQ6R9lIvxFym
	wUlNX961gVx3YEgEwptFJbZG0ZKpn2hElPrAZ03npw8e8TNdaSta7nF3Eihkm9F7nrK
	cvL5lYlZsivS4tgGRmQFRSXbjzW+/hBmEXonCGj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcfb9186-1d8f22a8-4bb2-4395-b71c-aa053bed76ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0db4eae21be49c817b4cf7ecfe67e04a7ec84774505c5350285cd60a0a1efa9d
Date: Sat, 2 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656733012
