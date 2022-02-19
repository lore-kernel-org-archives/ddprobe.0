Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7244F2F
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645247185;
	h=To:Subject:From:Message-Id:Date;
	bh=HSb/pnv5bGO1XgkbYz06ZXx6Rp51NKFVas5Pop2/qug=;
	b=FyLf9PYWLclik1TXrSOals/eErjS0dkbxDUgYNOkJAtL03uXipcQUirs5TfjD37B
	eGJsPBA7IaFJsptRfgkFXMc68FwL34BORJea4bYFSlIeK/FuAD564nI28939DUstjdC
	l6RCJF0TEM4HjbJpnFmmk2H843CjuRlWEmu/TQEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645247185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HSb/pnv5bGO1XgkbYz06ZXx6Rp51NKFVas5Pop2/qug=;
	b=T2v5B6BBAldbgljZHmzEqILsranQUFDOi0sAlhcHWtI1pJ1vx7uwolwxjyaHfPu5
	inOHN/BME/Dw/FOFrMvyhPBpSEsCBZ0d/RXX+fgGInfJ9xkYssaXPgiQz/R3yZ6pmm2
	J1ThNzwtUuwtd54nLfjccjTVOGTYWoRkjIFaHEZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f105fc051-3265e61d-c4fe-48f4-b2f9-09350aae3a56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2834e39a0bb680e75a9d2603c55a08070e709d009148b64fa07866ce661fa188
Date: Sat, 19 Feb 2022 05:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645247184
