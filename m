Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B35B7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 21:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648504378;
	h=To:Subject:From:Message-Id:Date;
	bh=Je/4j6yYOQKlogF9e2sc1xX+XqSnDar612meUJiE7q4=;
	b=DNzaOiJ3blMm2i9UNJkWysrxZ2t7+BBaWloUK28VrX47EJjvDUNalKc5XBa1llnq
	/+HK0vjvYUwxzd/Ivvu+jM4h3WRUUSA1psG1lYQqKCj6qwBFLe/cMAkuWc4TKT+aJvH
	rHhdGZDS/wYRStBULcGbbU2vlLneRCj+/IykY8yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648504378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Je/4j6yYOQKlogF9e2sc1xX+XqSnDar612meUJiE7q4=;
	b=Fm75NV8aV6WCbuaq6+9zAhjQ4KGi2q1n4rKLKQbDIni7+c5EnUboscX1KpsUYil4
	AlEM7bvW/AtMNQ3GADzCXHS6PeI5507LPNgY7AGMzHKqtcDtxLppCQ4gxV4TL8iVpBc
	OEzcnydaQxFHRm9meID4mYUiI09N5x0myOA6Mc3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2849391-94cbb05f-be71-420d-973d-fe204d265209-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c00292ae9482f339d0364db9c555b0948787805bd1aaab6e1d255f192dbb061c
Date: Mon, 28 Mar 2022 21:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648504378
