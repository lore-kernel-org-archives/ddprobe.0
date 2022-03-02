Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F422C9D
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646224884;
	h=To:Subject:From:Message-Id:Date;
	bh=aNr/82Ev/IjamfWQyH+wMcvkNbEmvecgrko94SgxlNA=;
	b=BTRZCw0JxwE/vM4y+11Bt+iYekkrwGBDj0YjZDPG81N8gB0/r+r3HSdhMyolpjKi
	Vs/ge1zFb7D8U1jT03qAml/buUVScdTXdPdnTQXSKTJoK0Vcy4Bwx5eYByXs024JlzC
	jKn5KOVyPO/EEvLjbch8YgthHIwOtN2Bno62l6/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646224884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aNr/82Ev/IjamfWQyH+wMcvkNbEmvecgrko94SgxlNA=;
	b=gidxQuAWCIC3/8a5TbOteTzsL4t6ObyrjYIwcKQL8y8iBQt9fBM6VzFsz3tcdMag
	gqHqcRCWEjsmUBMmeu5IKMMQuttJgvwTQ+NjOJCAPEI0hbxkf9QK6wGJeqO5K7g/S/q
	Psr+yRTq/FVPnaVYbE0rcNSq75ZU7INDnrGA6P1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4aa64421-165b2310-2aa5-4ff5-bc33-ddf1c15faeef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef3534ec9801a652468d350531b20dfe40e7b45e702bf2975d393ed014b12a0
Date: Wed, 2 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646224884
