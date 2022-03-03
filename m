Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8795B7A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646302585;
	h=To:Subject:From:Message-Id:Date;
	bh=WLoHsW9DXeIVpL+HHt41wn12lEb1i3pY8nSlvT669Ms=;
	b=dgHNgyaUnuCWK8z+iP9VuHUvgMRakeoUPnQ9Pr1+91WEz45pMHTwVYsy2Gba4w+n
	7NWzIsLaWD3lfr2BCfz6Nj3ZEPywN8Jfk2HWcNgtCy2Fas7LA856dHnGEmq2YMFrPRy
	vCY0k/aSQWeCmfxUaDZFWH/JJyQeIkF9ZpFCnK1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646302585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WLoHsW9DXeIVpL+HHt41wn12lEb1i3pY8nSlvT669Ms=;
	b=lz3WKi2/UjGhG31WnHMYf3XdK8IwOI4+20MmOkXDbtc5iTgEWw8++vogddYlnZwx
	bSZUS5xas0Obq3707zW76wAr7sQhVoiS0ZlqHhSlhtDHMVUla43EbzSmGCIsBOlDS0A
	x2aCXntEyS50IDNJJIdGYDDNtB+RwklGbsRvODuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4f47dfe8-13373047-d1a8-48e3-9037-6f58d05d71f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe75d6288706a9e3fd6f008852fe064b225adf44c30fbd961002dd088b8b6b0
Date: Thu, 3 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646302584
