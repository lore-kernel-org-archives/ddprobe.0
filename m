Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34C87A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 20:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650660958;
	h=To:Subject:From:Message-Id:Date;
	bh=t2IWERn8QsJBlxKeyzyM59ZgzX7DV931WKtTw5eS6nY=;
	b=PXLm1RiaKiT4Hq6p9/nlkhtGMm1Hll0hO7O5daq4h7YxYXqNIXm8YkQu3yldlQci
	yJ5yZgVUTb8MK6dP1rW0e0krPhD08l+y3g12sBERRCrc1ROHLmWYmBS3Ps6Xgk4HeuJ
	IYunjgb361UwWhR2UEvly6jgPwSic2dCnWf2tUJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650660958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t2IWERn8QsJBlxKeyzyM59ZgzX7DV931WKtTw5eS6nY=;
	b=CocI5Bi/QsqDdrLFVN8sE8EQ5oeuQMfJm1hZZA5aqrKzIBlyhfvij/QviJUGpMu8
	M6x19fHKbjfQj/pzrRvg4zbPkBGAgYZFuIHoCzp9Er+tguX20HHCudED7cOcHItFuBT
	spHxOYL63ASzA1qo1mj4Iomzs08QnGNQKb60gyE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180530f6017-73be8fd3-8a64-492e-8bc5-39f4cf16fdc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1244dfb90488b1af82b484808dcba508d728b967b6423fa21ed0871399ccc08d
Date: Fri, 22 Apr 2022 20:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650660958
