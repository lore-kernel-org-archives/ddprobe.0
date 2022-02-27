Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE817A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645989685;
	h=To:Subject:From:Message-Id:Date;
	bh=PZ1n9Cq3Ur9EiGUTzK7hK1qn+JVfhh0/W90dExSPKk8=;
	b=M7wHKtzcyK8a+gKBXcx47DMToeV4Rb0sgnbVsZ3gcxetP2xIQ1qHoxsZvtoDrscr
	43wfTrLpt8LjuKd2ZphZ20USTy28ix6pwme+e9LMaG1/+yN2ozZqtEgVcLw8SkZQZzK
	RVFlo8/46ZHimOCdpHTdyGeIKGBCsUlBTyZL/PQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645989685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZ1n9Cq3Ur9EiGUTzK7hK1qn+JVfhh0/W90dExSPKk8=;
	b=XKw3xF1cVigURHBmps/wydOlAupjqmsXxVc+UrnIkou0WK0IOcXNyAyZCP4SQPpn
	PRr2qVghSN3Q7ir97ALlnevh1zT/zexfgdxOc9YLRZiT/MoBJ9Mv3hhaFVXF+oSULf2
	UomusAx/tcmLIDTAzw/hDDCiU2umEQPLSTz/23Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ca16622-e8b1b548-74a7-4e68-81bc-80dd9bb99a60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0da709e1a9a95206b5da6d2f380fd4f34bda6a5fa5192ac3148f65569718278
Date: Sun, 27 Feb 2022 19:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645989684
