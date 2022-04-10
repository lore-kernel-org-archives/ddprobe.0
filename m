Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8D1139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 21:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649626558;
	h=To:Subject:From:Message-Id:Date;
	bh=1VNhPNyHC4zm+95UxeSYV1kvG3cC89+cn8sgigJfwjI=;
	b=mzARTlmlWpHi6beLuLdr5Ui6Rb7ZEW7dDOjFUuYBSX6ENfpkrcSXR50moAIt3X41
	BNot9SOVRfJZ/K4q4poetLJgtScc/xXgQkYeQ5zed4UGokFgJMl0c1gxBUvK0Q+graZ
	GOELUxYCO06lJPEFb2Aex3WZ8Vks+bD7zjqxmt+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649626558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1VNhPNyHC4zm+95UxeSYV1kvG3cC89+cn8sgigJfwjI=;
	b=H22I/lChMlngI/2RyFfr98/xpYBYSJbefXMcJcfkKtd084pWeQF+bLRoUNSPhb9R
	NCU6PMdw6/ymxmbgZQT2hWNWi90swD0xMtgJuVKSiBzN4l5HHpAKN0YYuPxPTSUr69o
	DPC4xi1pi4RpZy1khTtkQ6D6VJ/EneEmQwgmLFKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801567af55-f5f943c6-4ff9-490c-b904-e55fa21e4c95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1b7ad703bb985eb5b55da82a72a81fdc1b1e85c79ad0a57c73cf9ae9624ab3d
Date: Sun, 10 Apr 2022 21:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649626558
