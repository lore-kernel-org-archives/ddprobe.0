Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B903A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867499;
	h=To:Subject:From:Message-Id:Date;
	bh=CfyAPtLg/U5FNa6uKySiWhR6tGBf1vJZRZOPAK7r+6w=;
	b=gQlQai6VqPTV6t0qVifKC3cPfRIirvVnfFQbsXakrm6DQ2yK0CvZuXjthu4353dx
	rOEK+2M+++18chDsflVmTa32MHJJcupykLMaO4SO5GOmGDHf33HtdyaeF65fVQXRH7c
	GmqpUI1qmBilB69fOPMmjbo3IE9KNuEZ/UEFxiks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CfyAPtLg/U5FNa6uKySiWhR6tGBf1vJZRZOPAK7r+6w=;
	b=fj5BJMipuxY5UVv2lrrbGd2lRD4QguY+qCoHVGxRN2WiBbaAB6O7l7l2rpoLDYaU
	JlyiDYra0CWBPdOVaThinm3/B7TGORKG3hMWe1p4RZJwjr8qun2UCUSIOCdxM3gXdnE
	yepc1saxz1PKqoYtMgrLTucHWECEm7IDBD49ZDe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9be3698-0ed8fa2d-1fda-4ab6-90a2-c436349052ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faa54edb1cda8dbfa838fbd86a8f2d438dc6f910aab462a83ad5424b6fd226e5
Date: Mon, 14 Feb 2022 19:38:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867499
