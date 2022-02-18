Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0743200
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645156884;
	h=To:Subject:From:Message-Id:Date;
	bh=efj7ezMQdC2sDAhL4ug2lzLwvI+FwWKIvxjxrT2+KyQ=;
	b=CBvMtl8C57UlWj7hwwqsMHD1Qa8j6EOT0UclRpsxfocJOxDujZ7tGPYajoGleNIf
	7qpJqPT2WPG6gZ9xzSTqWEXBiSOEM76SvoXqXGRBmgeoGEjp9Y/L0toPKMd9r+tiKfS
	dxpeLXD+1yx9m/CmNK1VRVtARLn9OIOoojhHLTPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645156884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efj7ezMQdC2sDAhL4ug2lzLwvI+FwWKIvxjxrT2+KyQ=;
	b=OlHr9zJwVHeTDPD/eSWJVPyMPQ48XSVxLbJnIFf7XxqDtg+r2Nkh7bg6O5nhhE7A
	alGJAHRz725jPLajXoQIWV1CQbs1O0pVDC3iB0+7kgeaU6ROh5laFF3aHEHCU9Bgs/k
	ubjba3VI1XJJcZZwcsllDUI9m1+RxnTQF1YHWBEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0afde119-fc08a8c8-37ac-4483-a3e2-a167b022bd3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebc142ae66a7b1670032f8d8982a32f1c8a59d61c4525eeaffeba4bc38d54d87
Date: Fri, 18 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645156884
