Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBFB2568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645436185;
	h=To:Subject:From:Message-Id:Date;
	bh=MfrH3Qx3GVUSjyH681AhOSQu2lmd63v7IDw8PE13rsw=;
	b=TFYY1rNupTzv45l84zohF7QKAobnl216ggnyPNyfv6YkjTiXuCRUZ86w7mzqOc1s
	xgnV2eDXz0WtV3tssn3PPgdeCe2WFKFIcaLi0ccKYfykGUZ9soPPXO4sHy8nWhc30x7
	aAz4aVzxL0csJRfdBGJt7QsY0nQi4OMSzduFyTNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645436185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MfrH3Qx3GVUSjyH681AhOSQu2lmd63v7IDw8PE13rsw=;
	b=Ictgqq3Fp2x02p2IutHFPDlPbjP2XZYE9AeZsbt+bSW/wR4lBhNm8HdXTUQv1jK0
	SSmMVGthGB/h8fsPu2MTZ3TVVuurprsGyt7QHefItC1dzmR2Olu9HnjrweNh6Jj2XSQ
	hSFuQ6xR4HWNarcx6SGpRgKKaQLhqfbch6oCVHjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ba3a8cb-6b0d3261-6337-4513-98cb-123646acdd3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c21adbd0df49ecd1dbffd3885aa5f48adf3c72d238d8b1a153f9abe115bd2e7
Date: Mon, 21 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645436184
