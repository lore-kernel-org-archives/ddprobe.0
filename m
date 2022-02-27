Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2A6323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645970484;
	h=To:Subject:From:Message-Id:Date;
	bh=MBvbRISvSytS0PJRtaeIT1BJHOvRkL6mvwkjXyE/11k=;
	b=V5KOLOZoZ+F083kReAWJ2L5iG60HasqOqo0lSSaFOopTyoormu2PxKW517e8+G3T
	bdJKoGn/igD8yYSwp0Oc6IXF6KoluSQpMb9KUCvoQgaUbachXXx42cRQcOxwqnYwfxO
	CDto2keNBG6BWxnncZFprvZHg3IN/65kI/hr14Hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645970484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MBvbRISvSytS0PJRtaeIT1BJHOvRkL6mvwkjXyE/11k=;
	b=ZnndP1Vulio99lJC0K/ID6n/CzQmS839gs2oDUt18+ZojDExCJ0dpVksBSp8p78B
	fHMBJIGvBP/StJ6MtpImCmDkJ/HHyi4l9B6XdDAxr4FuuT6kITHai9gk8FVz7MWmzG7
	gKDlwZfbR3rVOQvb484hVEWCS+ORnQIvogPX5LvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b7c6e44-60ee3b94-b892-47b4-8b11-65e7fa6f688f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc54e902679aa78cb514c0103da191fe62500083b102b8326d028a89034cdba9
Date: Sun, 27 Feb 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645970484
