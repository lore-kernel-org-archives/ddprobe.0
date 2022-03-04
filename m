Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBBAA4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646394985;
	h=To:Subject:From:Message-Id:Date;
	bh=x46oK4f93TYv5I57RpbH8H1ITtXkVxL1aGyiaBMXDa4=;
	b=WCJcIfZLaHlOOVq8hHbR/PqeJEgkIVJy2RX8nPDgmlvLlBX3A4NFRQsAp/10TKtU
	d7H9cIXRhU9NaIgoZnznticEoXZIOu48SOlVLLKT95tybA1cJNq/gHH1Zin5HqZ5ozL
	ijnRq7b7J8ofVHd5Goy/ZOKTct3+/WRg+y9oukN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646394985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x46oK4f93TYv5I57RpbH8H1ITtXkVxL1aGyiaBMXDa4=;
	b=gNgMy1aqoP4o2AwtGpK1tetNAVofM+mBqrSu6ZKGUFH8ePj7MZdinBlQnAeQrNFw
	yJMdiGrtWASJlxFQC4IO0QK0S5zsIRX0TKLdVftSIRJ1yguidSK6gACCP4fiBulMuXE
	7GI1W2lwTOi45wPOKKo4AFS1LAtmTD9cRlbyNZTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54c9c8f8-e16216f3-5e0d-4b65-8bce-204c710bcfd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6db90670c1cd8d8e9cf3d91be9c622066774c0a1618832c222df83b8f823e2fe
Date: Fri, 4 Mar 2022 11:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646394984
