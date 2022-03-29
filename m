Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B3E2563
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 20:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648586218;
	h=To:Subject:From:Message-Id:Date;
	bh=h1xZPXa5w20p7F5pJSdpBa5p+8gj98PBTBtKSE/K+BA=;
	b=NvytZ3Oc9dFB/3MpjGRfjEwv16FGBMarUZ8Udxb5p64FiZWTCrQxl0NsdhKEUWhf
	Vofn2hy4mYiMCBkm4PsIwSH2bjrJ3NxYfnLgCNKdHPM7oWVv9z+8K8iUtdbuZeQ/+4w
	/c74I/n4yqJlXpxv1MK5DbwgcABluz6BIx21wvwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648586218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h1xZPXa5w20p7F5pJSdpBa5p+8gj98PBTBtKSE/K+BA=;
	b=UHwpNLjrvZUSh8RN2mzapzdmFRcr9lAV2HAHwrVsKn3N2axLUIgTCACLHg5oT7+n
	bk0ajB6mqOGr5bMxRrjsW5RxLZTLslASPhgHqHZ73rUZLmhbSEzBPdPQI3/CkWlWuIS
	WiqqgFXzbgrOlzfDRdj37FZAwfLmEsnGwW5u8SZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7655b33-660c57cc-6613-42bf-a668-eb2c42aca404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb53d2483fb1348a6de97455bb10c36e875bb014a9c84aa8b13d9ef30d85d18b
Date: Tue, 29 Mar 2022 20:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648586218
