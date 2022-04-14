Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA5D15A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 22:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649976178;
	h=To:Subject:From:Message-Id:Date;
	bh=6Ze6nlhwu9Yr43lvSV2QLAlNtdQcTp1vdQo2mggoeYA=;
	b=STdfRkkAnwe1qchAfQlJ79qv+dEIZDjk+N/KdRI5S1cC8hHM/0xNK9C+NUWyBUpP
	XfaT0VBg9LsVkKMx6+NV2XSz4sx2ADeOmr7gxXiU8MFw1lRnUmPFpoSn7O/DTpIeLUN
	Vevrd8nGbARWhyxFwiR4+fgGbFpIgrenTn7jKKVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649976178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Ze6nlhwu9Yr43lvSV2QLAlNtdQcTp1vdQo2mggoeYA=;
	b=Wqo3GMJJ2/qKDU1YKEIkiOS6tad+218nlmfehv2W/kkuZlNIaaWPmt6kKuf1nKws
	hoWqv9k6+YhJmV9skjDg+skuR7DK+fAExFrlfWIJmnJ08KYngkMpwQtpOWDGrLCzTj2
	L+F/2+40ChIAg8fOh44B8j5UBbwJdCEg2H0XI4NQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a3e766f-1ca32480-b40e-4f99-8e2b-a8e58e3f87b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e4a9313a0dde46ec680c84aced6fdbbfe76f7ca514d130f2c565c35516895f8
Date: Thu, 14 Apr 2022 22:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649976178
