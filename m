Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640A01561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644931584;
	h=To:Subject:From:Message-Id:Date;
	bh=mmtrkaOAm2kp68XzJMYfMtPrFWYyNVs8uQVu0SZ/Uek=;
	b=knaIsXbFDhzWqYbyFAHNDS2HbdvIMOdHAfOF7aMlqvX6++OftEBXS0DGYGMpT7uY
	6BxxqPi6aSyDZMrrjVcvmnCvULnuRtVW1xDCyF8KYQ1pUFkHqcABG24WJpe3nM5BTcL
	r1xXI2sGIsZEt76MoWp5w3s4ngd37XbxjHgg1YKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644931584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mmtrkaOAm2kp68XzJMYfMtPrFWYyNVs8uQVu0SZ/Uek=;
	b=CVoUYQM8OIDVSqiCDbLjuoAoivyHV9k0+3SEzkMkJjP1HtVN7NF5/DOXNsLuFXd6
	Cik8dNB/hvArqGPdE+q66FWvvpX+1yyEMo0I/p2+N2nMFiG1ooEf7kZfGtsKrdusU8S
	bse4vQag9DUrT+vp9lcpKLnxzpN414wIVgVLykz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd9012e3-15f852a4-e82e-4b05-b793-6c2f91c21af6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a15f012d528ae3e0ab8cf9357dddb6dbbb9b9247bd76503cb312bde7f0a340f
Date: Tue, 15 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644931584
