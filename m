Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD11FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645167384;
	h=To:Subject:From:Message-Id:Date;
	bh=sdJWPt2+CTobc4/P9KgRS/Q8ZzSHWZtYTu9SPJRkQuo=;
	b=bbDU+V2cXOtlM97Vi3BfCh8FdbgrjmPNcNXGVf8I0sBi0MZYt1Csq4p9Y1/ePKIA
	yQEOOzIBIZqV4FNIS4I0g1GZfwErsZXdcwaTkj9qiFmiG1w+CEYpGuEIwMTp/cNsBfK
	r4R3Ta1jcqnot2P3d/GB60ct1KgMgw5kURNDwa5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645167384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sdJWPt2+CTobc4/P9KgRS/Q8ZzSHWZtYTu9SPJRkQuo=;
	b=GvR1oax9PwC502d6+XP3ck9OzIj91kBGLFdHqKm3rJ8fYwFeLYtGFZZTulMVVkFT
	kdpSaifb2voyksZL9mg+cdVfVBR7U6OOL40Dfie8Ws5obH5x+1umME1Ar6q2otRg3Iw
	qx2xXHKxketgdyM1H4tlYYROXSgQg1Uy4U3Lw8RU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b9e18d6-280d648b-a2ab-471a-969b-b838d3ad5aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25c547f99567e7c4ed61396dc023e206ff1e87881596bd4d60d35aefff19e07e
Date: Fri, 18 Feb 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645167384
