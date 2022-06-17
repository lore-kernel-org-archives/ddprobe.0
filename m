Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD0533C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 18:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655490419;
	h=To:Subject:From:Message-Id:Date;
	bh=VVmasQWj9s6nNRmSdUlyx9Be8VgVFquMY5yi+wvDFuc=;
	b=exxOQErdR2kW/P6sQF/GU8yPHffYeUEFUt4gC/FIOA2ijBRckMUoZyVmND0xcjex
	q6xkPEqcmpy/6kFQbjysB6yt8Q+jS4rrZg1cPUigrI/9IGc0SXzwxRqQh9PCwFx3qEn
	GpBpfk3EPQUQ5hD7lmg25twubIBtBvtykuzeIwKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655490419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VVmasQWj9s6nNRmSdUlyx9Be8VgVFquMY5yi+wvDFuc=;
	b=fxmlZ/yXi2fx4EuGpfdYQ0CZ+vT7dAWJvKv6AGZhAqp/XnwUsMr6vRmOMtlCAkGq
	hc5AIG7Hpv1Rr1MuOpP9+fKW7CdGYKnkjfi/7uzM/+b9US5PUI0MWfNeGhQ/EdMDVSm
	oeqUfLdUySshn+DITq0MKufben7RSUMPbLQ4SLJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172eb1a3e-a72ae56e-bd35-4397-b1df-47215178c06f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eef5f132499effef1159853f69fafef51c9f53c3fbc9fbf1e1f5284dfcf9da78
Date: Fri, 17 Jun 2022 18:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655490419
