Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7641B7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646061084;
	h=To:Subject:From:Message-Id:Date;
	bh=W1rKxSjh3z1dCMvSVbc9QqJOFfBBkngRPjhsXVIZsD0=;
	b=bwrwldeyVKAhLrM9kTZOm70hBKCkEPJN/v3x/S4ZPvyCfDElcZhWBMlsqfi61ItQ
	mhGJjYINOIRMcgrqf2oFchlI/cmih5KM0s1B6S9vsCMsetUXwv1i5pxSD+Q9dGYs72v
	LEPGFkKDtmCUzp4krwTtqn4YST3XHQwWPmoFHjo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646061084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1rKxSjh3z1dCMvSVbc9QqJOFfBBkngRPjhsXVIZsD0=;
	b=H5DSQjtgIfvMBYgVsLhZ4MaFQTft+Dq5VNUSOc/pzk+rHDlA7vY17v/xT3qu3k0H
	rWbOMAdKgouHek8unASQhNXG75Kh2WC3LDtVqnRAiYI+ZucGjiEIgjWEM8xf/pcDLDu
	ZHLopl+gytCwiqxO+WiW3ECbIDuk9WkLFCo9ftVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40e2e04a-41f2485e-7ca3-420c-b4e6-1c84e534380d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e19785850ec7cdd87493e5c3673ac8bc114beded783756265103680fc3da92fa
Date: Mon, 28 Feb 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646061084
