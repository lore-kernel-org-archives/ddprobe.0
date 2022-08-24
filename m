Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8A010FF
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661365852;
	h=To:Subject:From:Message-Id:Date;
	bh=Sw1fg+YejrLPGaKuc+No/G37HE+FOcUOINivsAmJ0W4=;
	b=hV3GS6KUsQppczI7k41GcxWGjRJnGyy5Bf0loa72HBTll44h8d4j6qQUdWMxALSo
	RUIVr1fHOUA5G9eY7GjufpPYmMT1p0v1qrEaoPH1saT6oC8bl9zkPLqrp8Nd9PqvgqE
	qHxfauclEUXlyaX+X7i7PD2jSB0Ivx2drce5nOoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661365852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sw1fg+YejrLPGaKuc+No/G37HE+FOcUOINivsAmJ0W4=;
	b=R6zhn5S/Mt/iVvxjRt1tCiCJ7lw9lLK6ta/WBm4F9bgE6uZO+9Uy97TOUaTFNeDy
	U9Y0O12rjjBVCF91aGbQP6hTcbPrNS+5QLonSYUwMzRqY5CumiSd4MoiXRTs4HtyJji
	iMvldPzQuNiX6Y8d2oHoEGTRzyK9aPYJ7/Ppnms0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d11f19bf-0f13e8b1-6d9c-42df-a361-1df287b5c3b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e9aa102f041135e0208ccf7b706bbfb2153e770d7cbff207450ca1ca3c38a44
Date: Wed, 24 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661365852
