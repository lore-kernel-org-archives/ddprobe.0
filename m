Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775377A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 03:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650856498;
	h=To:Subject:From:Message-Id:Date;
	bh=GOTWRo8nyh1E/Nt2aSUHF162FpgdrKm2W32iKyiu+w8=;
	b=HckQeJp64X/DdmAlhN3dhF6XtVh2aA+8l45YWIw5dKZXXlBk9Q9MXL6s3BEfftdv
	jJx0S6zdCJJ0bjNhsKZgmyffF6IoBcAP3BTM1vDus6AJgUmrYzYd0EoaerNyG0vQmGE
	W3hDkLwaJvZIhAp4ftMif+3HYKyoh2wo1EhrNjAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650856498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GOTWRo8nyh1E/Nt2aSUHF162FpgdrKm2W32iKyiu+w8=;
	b=k3PIh/ptLe1096Tzei1rh/MVAuByAXlPu231H0ckQlRBy4U8cRr3DwVZPRx/V6TG
	0+1Gy30l9UUkvJt6xjSN3KYoUPPyF/QaofvJv2oUCbldJg0c16LEs2fz5HukInvtgG8
	BWQPuNUbq84ydOWJibMGuoE1LLlssTNAelNOxk0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805eb714b4-a3a53e00-ca8d-4ca4-bb42-9353b45819f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7319d6ad5f2a59f577ad829ed42180e86529ee9ac40b8a1b1696a542b5fafd7b
Date: Mon, 25 Apr 2022 03:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650856498
