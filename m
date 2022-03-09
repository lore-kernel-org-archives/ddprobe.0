Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E48017C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646819484;
	h=To:Subject:From:Message-Id:Date;
	bh=V/u46DA2AaDtqkXaxQ4eYOhXNAdyMlzoGQYcxYSR9Kk=;
	b=XP5IoY7vyV8IsaghRVrZ/rhiW5Q/y8hy9xLcxZluUcLt5cVLTgLUk/nQ9KjdSlnz
	u41h+LQNV2BHxFgje2fq791yQSQcHcSmfOL7sEzleIKRv2tj80yIIN2+ki2cbW7U1MH
	1G/V1agCg8lrWIcpbnTIid95k55fXR/xZSX7g21k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646819484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/u46DA2AaDtqkXaxQ4eYOhXNAdyMlzoGQYcxYSR9Kk=;
	b=TZrDsuMPgfPBwkiLarGfxFRUN0HKZ+eCmoYG+U+z7ylNtfm1COPBYebV/io20lVs
	eL03u0so7GKCESBDD+WB/mmxjxHbz2qVhabuBa15kUiK/5/ex5Zasz2DxQkP1oSUix9
	qQRi+fP9hbty/S+qhzaOlibXzbuNgkWYE5NXhIgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e17243d-06c931ca-8426-471a-9b02-e46bb613cc12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1ae69885bf9959ee58cd346f68f8f075a9d678585e5b5aa976c100f36b164b3
Date: Wed, 9 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646819484
