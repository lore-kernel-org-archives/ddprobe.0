Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF0D7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 17:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653671579;
	h=To:Subject:From:Message-Id:Date;
	bh=sKZ2egaix8Lcm1xGxycmq3WkGjq+wlb3CBujJmaeKvs=;
	b=SK9a2rEESY2JNF1mxFn24G0lbqW4aUZw885hSL4ESMOG0w6RVOpZBsBbiajpAQFY
	7q8vIUN7AR+kFIMKtgWP/qCDHoVYzBFwhJLhf7RRyEtn/3KGA5ixLVMMxx0IW2m7C9o
	tZKEFy+ssUQPrt82q4/3fRz8YzEZ2uqwiI+9QzKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653671579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sKZ2egaix8Lcm1xGxycmq3WkGjq+wlb3CBujJmaeKvs=;
	b=BRttTNWabdSKAUq8NupocS0uhZtUIxwjw2EhXB8sqMGIADEL36wmjYhbcvmjeWSN
	luFsYDziFjcmzZLrzHUE/yZ5YwrRHINn/9k2JgCccD7pm3Mc6+2YFs9DMuBlZYFJFeC
	KE/lJi+Inu2iEj1yL4833na1nTnGDAicDCxHgoTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810681cea6-d21542d5-a5d8-4591-b630-00a56da2dac9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea97d8e1c7528aa7fcdc727f5e4503363744d9596777ec0d64813d755def9050
Date: Fri, 27 May 2022 17:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653671579
