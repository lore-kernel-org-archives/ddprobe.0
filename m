Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9213666A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645544185;
	h=To:Subject:From:Message-Id:Date;
	bh=KGdU1Xr+/QVM08A8p8b18GkO3sw60ka5SeQLLrWPtsE=;
	b=iSjelEEUjdfDu17J/f1MHjANQSufKvQPiPReCAHtZ7kDZ9ZER/j0Za8LQgwbuexP
	/MnUUsCg2xE2aP8pnVtUVwm2JXD06vgGJ6zpwYWzX6h4EVxSmCFv3Fj1sAisjyLMxM3
	AWOZaIa8p0KIWIX8XQDwm+MYDCueRv5iXIW5pCXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645544185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KGdU1Xr+/QVM08A8p8b18GkO3sw60ka5SeQLLrWPtsE=;
	b=NzL/a5sN8TNub2ooy4hu0HVnTtzWzUTWA8rZgdnznDAqlAuVwIFmoiZOua2WJEaE
	dVFz42JZ5hSpkHOp5t+prL9Na2iWv9vu+gfaMZMVc23pfqgcsnZhoQ0njpvmREjdDX4
	jsX272S/hv8CUbUrd+wbUtqJpwbbyFurjzOfkmCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22139c06-b2f75692-3901-4f3c-86ff-704880c35b84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2506bd4da6e8158f5a8751cc2deb5e81932e4de6083d087d53d66d509af8fa90
Date: Tue, 22 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645544184
