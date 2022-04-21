Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D340F4687
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 02:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650509279;
	h=To:Subject:From:Message-Id:Date;
	bh=J+4f0QWsEyRh6HkgW3hL5lr6rhRx6ZCE8UFKeBHsALI=;
	b=KS8bX2snD3Y1ooNfCyM+CLpcNS3qrGwQAxzCJJ4y5uR684klrouLiB5XN4OtZcPj
	PrDseBuuB/WJGmxaSbrzYMCNnEh99Gw/41qGIJjDz8IL06d+3RInQvT+t524S84hQFp
	mi04oBm5ih61tP0U1Hlxwe5anle1DbUNJLf7+GHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650509279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+4f0QWsEyRh6HkgW3hL5lr6rhRx6ZCE8UFKeBHsALI=;
	b=YJRf5Vmo+Qta5iJcRcDXRkg4LmiO7+oKZMPrcbeoSs1aWMfbNU9JCy/msCARYYEb
	1IsU4D/cDtWbKtvnl666snyzU5E1JVQ/vOdnvC5I3bXr7Bnv7ElSrjYgy7l4oxCbujN
	zTicgCdtrBZ2qWSq6I47vgC+sisfFUx3joiFdpJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a04ec66-fc876d3c-142c-48e5-bb9d-7b28886af32c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e314a6ffccb03b6d0f3820869709f4b612ba7467c0336e1866f50db9a6b97ab
Date: Thu, 21 Apr 2022 02:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650509278
