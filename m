Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9807A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647998484;
	h=To:Subject:From:Message-Id:Date;
	bh=esntlQPXcFaVVbNF2m2iSvxJ15TZA3aSCv+62sgTnH4=;
	b=erahKHR+5PA0yAb2uISOPSgAB4XfnCCI/WAnz+Uf3lkoXsMMB4si+LCzSB2e9NiF
	4lNa1qX9RFK1SW4szIqKDdgXz9il6/1HJ4FXAnR/z3y3TKRg0VX90MlGYLz1K+eEMR+
	g8Xm0VBsX1DBmGDb+2wzZ/r4rNJvjZgE5lMUZTnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647998484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=esntlQPXcFaVVbNF2m2iSvxJ15TZA3aSCv+62sgTnH4=;
	b=O+3jFNAgtkQ8g0yzJW5a4iAEZd1Azp3eZXnJTKF1q+wUHVqe97L84gjZszP/5z7l
	nrFw9SIQDdST4fAGbg1Tya61ahVcrYj/AXJPnGSuXAH/+Q57vRY8pc9DUpoVqRSoOSn
	9HKEMeb6aXppn+zXVbWjNCHpr/g4MFy5nDRIccBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb45d4121-a049d84d-3a65-459d-b420-8ad18f232243-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19ca894233fb2e2340ebe329587ca53f338b76ab47662fec3a691524348950d9
Date: Wed, 23 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647998484
