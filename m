Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00B37C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646292085;
	h=To:Subject:From:Message-Id:Date;
	bh=wwfQ7Nc2ga2Ru+IxzxcrVQajayS9YwiqDQPxa2aXfb8=;
	b=luKjJgUXryPv7xlgeA5bZ1wrxvOTKk8XFOLRvqrnARwlu3pdRfdrEj/PL2ADsq/g
	mzCZ+O3bMHjJibAXsGdZBOsMgKMRSU75YIZWv1rl/Ji6nWM8Mg7f0TRZ+GpYDTeRhrx
	y2tfRYheaTb6Rb8yrIza+Hx0rxUy5t5juIifcH84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646292085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wwfQ7Nc2ga2Ru+IxzxcrVQajayS9YwiqDQPxa2aXfb8=;
	b=IGkR5pvtxmgTglCXid8mt6E1oiD3+Wc1JMyvmgmzwNObBGDSeqWc9/UuJwpyX/3Y
	XxZ7ILTKBnBj70Tcg2GhQJhuV2rZ+B9jQOLP7qD8c+jetwL8rgM4XrhcuKRoWHIJofH
	Zukx205LX0yI7SGzOKA/GJhEnum/OjPJePOCKBBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ea7a86a-3a8642f5-fa64-48e2-8660-bca8caae3a86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7fa0d680cb7b9f43b48d10aff3f0633050e5452a7cacfd1f965e7b5dd8e8975
Date: Thu, 3 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646292084
