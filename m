Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E8C437E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646733384;
	h=To:Subject:From:Message-Id:Date;
	bh=WYUWZFfNfhrN2SNHdWYLpSPdVHoXolPFtKCGIUzpS/I=;
	b=LZBfmWOg3pTMLlrjFlPJR3YwHz30xcJlg2EPCRrnFEHXIQfBHEx7z72lJ8/XngVy
	exm6f78swkYOMjMxJKd046X1iopwcmPPYjGdEa4Yg4AzKwPa9WITidjbPRQLcqbLdaz
	Ga5WQADFnyxy8jO7E+li6vzAxLs+OwO/WgOsU2qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646733384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYUWZFfNfhrN2SNHdWYLpSPdVHoXolPFtKCGIUzpS/I=;
	b=NzBMDX/vNVn1HE20bPIUuZ0wr6z7lJfJOXCnfkDk0gPRqVH0arFlQTVCzLmEAPac
	fZdUQ4y9AhhwqoHbEj3Ld4PkjtlLTK4k/JHoCzg+nmPKrA538F7r1HSWVGkenBIDuyT
	UPNESVz4D6KRaLkRW5RqkvTLy8i5ZQPiEJNir3ww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68f55c44-55eb8a90-0427-46ec-ab3e-8fb76c8c3584-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 157ef480fb76b0db3903cea250edf8536a8cf98d0fededa3aec6fd3baa879964
Date: Tue, 8 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646733384
