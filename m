Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76A4610C
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660985452;
	h=To:Subject:From:Message-Id:Date;
	bh=oPp6rfS38Iqgy2K9B9eEfCS9TjZhCYCuEli/wdyD7rI=;
	b=hPWY5WnNsNA8ryi58+g2CMlwHgo9oAu0m1RiobjgG8fyPJfiBCWM5eTslDrPUHwv
	FxS3j9s2DYOEQlLS720FLLA0kSpj6bkyD6+OTHCdXTDRdqf9+CY8CDQdjz2/afAMl5U
	VK2d4pNTmXdIGlqiHtoBvKdo/iewhfQ5uKgUQ1tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660985452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oPp6rfS38Iqgy2K9B9eEfCS9TjZhCYCuEli/wdyD7rI=;
	b=MMNCESvRY2x9AKPtUXdz/HjHc9E4WNH8iGQLq1C3R3Nl176HmxTUdDbAOh4SJ9pZ
	xNyoNAkSggUrJDfnEvwNKswwQQtpNrO9me2XJ9qFK70DhjQmkWumPW9c3WXO0+eBXwj
	rWy/sy2cREVpBNf2SHeNEqS2Zt2a0tLfrjHWF09I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba72a83c-86bed813-c582-49fc-9d5d-b54b7cb140bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90dd4df85bd9ae5c35547404e88dd5ea59ecf90554529fd08d6c4fb52fa12a10
Date: Sat, 20 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660985452
