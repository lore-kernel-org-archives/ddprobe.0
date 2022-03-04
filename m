Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932ED7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646428884;
	h=To:Subject:From:Message-Id:Date;
	bh=BF2k7IjXYtOsIr5g7m5IQE6tk9FyrMR4hdYMwVOEDpw=;
	b=XPOjd6EY8UqZVo9CO2r3f5IDJfkr4wgvQXyhPlt5IrS/dVintDUviixaj+Vv4NQY
	Y+YN/dc1gNB9O+dzyTkTosW8MQJW4RUVV4GMgryoc+s8uQMcruhmZzpxAUxaIEpiQOR
	RAVA6uq0pGvt577kdhuYgl2YMNeQS12a7wp33L5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646428884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BF2k7IjXYtOsIr5g7m5IQE6tk9FyrMR4hdYMwVOEDpw=;
	b=ApzGrqwvu0CAcG/ltLOT1GxlWhtGAdeAjpdu+kbi1xOM1t4LcY0vao27gndBqIwu
	n3wXDMRZv20MzRE1KKEt0YPxXSyIaFll46d46iWMp4EbrGgDZ4rjgSVcbNS+5YAFlVC
	b+Qcpf9ytsM0zNs19l+//IPx99IT1h3ByigjbYZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56cf0f0e-38e15b31-cbb9-414b-9c1f-d7ff7b6399ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b32449934fa1a156f9e4594b30cae9457c3421181460d0c46d57f8bc4ad2a17f
Date: Fri, 4 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646428884
