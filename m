Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E77F7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652011678;
	h=To:Subject:From:Message-Id:Date;
	bh=iHPedMmY0439E/wHW4ODPnov03apyBFiFuQUJ43BPjQ=;
	b=UI2DMHjRTj/Y3QOY4ce6x7X6ZbnWFCO5QHmF24ZvF+i+lU1UZ5O1RHkSKrI1Dt6j
	2D9CSVeQ8syTT1RaC4IjTP2L8xvE42zch7ZUKtCvUB8CIG1OS/aTFxbVDUtwga9VvMZ
	+ziD4kJqYYTIg09F+lUe+lHnZYgB0UFfbfRNCYyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652011678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iHPedMmY0439E/wHW4ODPnov03apyBFiFuQUJ43BPjQ=;
	b=FpvZzu/RQU3TK9fQHv2VaKCo//kGJEYhwz3oilVmRqb1VeSjuGAHtF+LJr+PuszU
	ViYX6GTgPPm/FEx7+Bn+aBIOSAY/UO2xqzBUwipH5OOZChWgiFoYCyTm1wPvg6jhCES
	1uAM2c1ErC/Bu5FdaEWCj3LbL0UE/xEdl+43eL+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a391ba29-ea72abac-6488-4418-a610-fa113b7dbb32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4274535ce8de5a58242b0af166a729597f1e2558fece8af3188991c393019124
Date: Sun, 8 May 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652011678
