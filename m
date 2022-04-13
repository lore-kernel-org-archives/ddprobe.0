Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB29290A
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 15:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649862898;
	h=To:Subject:From:Message-Id:Date;
	bh=EL85xfON1S7sAnBIWNN8Zjweq0Vn/DEwwA03SggeGXU=;
	b=N4pk0req8NaY3Xw8Nv3R8CdNMezXlFbWhdtZgItc/Rulx/gCOp+CGT1e0GSY1be6
	URhDJ0jAd4f+2UOwUxTfJ6yh2DlQs+MGSjYZD3xKUdSCtjFscgm9xMsbCo5/rUZVNPR
	BUpZusd4GV2tgI7IHFAQNrBE6nd3AslzN3r1pGw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649862898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EL85xfON1S7sAnBIWNN8Zjweq0Vn/DEwwA03SggeGXU=;
	b=C042EiAPT+mZVsqBxtlkh7OV0Ht0qUQ2F5QlX5in6pYWme/H2cU1Iqn6Tu0+ihed
	74dehMuoqJwj+T92soW6EYp9n1eBHcc3VC+2oKTsDnir/B1z078JHuJenja3cQ+2/74
	4vJuEoSV+aZA2g8UNzImQpH7xTDlRilQZ/UNh554=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180237df28b-5856c604-d851-4e7f-b54b-52c8fb67de7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b27b0f0cd4327c751a39d89fb92439427ba091844a37b6fdc422506e31407ae
Date: Wed, 13 Apr 2022 15:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649862898
