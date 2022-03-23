Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A482184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648034484;
	h=To:Subject:From:Message-Id:Date;
	bh=5hV/swO1Y+z5G52BwhtdlJo8vRiYBANPOyi1iwBuXCc=;
	b=LoCFrEWcrFYjQC98zWEC58/2n1dm6/TymuGM8PxO3DYNrOhbHKVENlMGHRmbJAjX
	zbzEwubyNKefqiOBqgUxM5ZQpo87hr/YGgnJrefVdhe3yf7j/8yngR2SWDLfiBdnYqK
	n5mCQwZW4orWnH9G4e5y7Oj+aecByqwhYAVLgmUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648034484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5hV/swO1Y+z5G52BwhtdlJo8vRiYBANPOyi1iwBuXCc=;
	b=D7Pxp5NDTyHaGv0s3sjqbT6y1rEhzwCdHRSduSJ9muSLjoGiXVD1ARH4J0M0pJq9
	NXom2EBoNRSO2KpVs6yfX2bi4GQSbh8yfw9Gtcw1nAXCinvO1Z7Bq9qAtBCW7hc6UEz
	XuOceGBrmNizN0i92F4Dh21i6NzenqWwyJg3mueU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb68291ff-5510da68-d0f1-415f-94d2-b5ff802ccef0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a59114093458ee4888d9f6da8d26ecf461e241c6980b1cdbe9012c8ebc2e89d7
Date: Wed, 23 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648034484
