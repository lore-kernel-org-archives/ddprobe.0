Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91DA160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647720085;
	h=To:Subject:From:Message-Id:Date;
	bh=Tadcf+dDic4CZo5lihcTptH8Bx9DA06U6QH3A0u+gpg=;
	b=c9wf6SSHVGdWe1gwt1CSBbXgb840aExbkspDZs0lSSpH9kRSiNOmh+Qq7urTy4Q2
	en8kTZXy9/uYagU4yIZVpPISWBFBhbHXLx3/XHqUR4X/uNsUTG4s7OfktG+rhnR/1Uc
	4CaMvf1alf3lKVAyfPHItaMpns6U6EUUBKhXcSbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647720085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tadcf+dDic4CZo5lihcTptH8Bx9DA06U6QH3A0u+gpg=;
	b=T6IdqugBUaWCmL71HJFTzkFFM6thv6uYb1Qm1LCtRdGVUHoyl/2yEeqBeUnmTAwL
	slh+0hgQDNzxgWPvve7vROAwrIHLfoQAdiCK6tPNBd6fXX4RkJq4nZ8vGevoQihk75B
	tGsXY1gOPIFTcR3Yqqvx9rtDIy1jwV5eEm8gPWkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3c534ed-76e4b021-002a-42e9-b0bc-30cc6603b71e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8974b81e99bffdda9b4a9c2118fce3995d7fe0efce80cca15a50364d667ddb61
Date: Sat, 19 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647720084
