Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC771FD2
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645058484;
	h=To:Subject:From:Message-Id:Date;
	bh=pS8K/wi+ZXin5UBapRjM1w1/1feSlgLfaIcC4bmJI4c=;
	b=NG+tneBNymp1hu4RaQ92WX60QTWZO52pVobYuAWKDfVaCUIamK8VXNxElO4wTX0r
	AjU1vUaZYQTO7oJkE4F8Rhv5nGhTbuWenPUadSKdDPqdF/6IsYru4iqzOgTIw0hwyQz
	R/458i5Y0Znrdcc8x1adnFeYrFwMdyBP+NKK1MDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645058484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pS8K/wi+ZXin5UBapRjM1w1/1feSlgLfaIcC4bmJI4c=;
	b=l9JpcXTv8K3jetZAdRMLlsxmkt5TZ2vwoccOtufm4yzY92dJJGXl+yOPugqHc1f/
	y/fgvBGTUt0w6br3Tjhgp+4/lvOCG417iXiAtuyxyP3il4lvaOrPNNhfwspHQpqQdu/
	KEXoBCCiDgna69hfXcznbnWdeBASSlnlhn3lKh5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05206a1a-c099f6fc-af4a-4932-a8c0-299a8b731526-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d03c3ced5fa0e140dbb679536be844dfd06b06a02812c8088ea0f97af057cf26
Date: Thu, 17 Feb 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645058484
