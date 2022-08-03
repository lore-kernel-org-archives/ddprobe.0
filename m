Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE2F37B
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659552052;
	h=To:Subject:From:Message-Id:Date;
	bh=zIKoz1fSH66spwqyIdabNvf7+t1K6V4yot5gMwEUYVY=;
	b=dBOaho3Zud4jKcWoOh/lCI4Ky7Jk8Gx+7Un2bI2BpGTf9AUzfdPyKEGhikRGsH/W
	iAGFho8kYsSC4rvTysJmfn7mStRE8CV+kynpQrosS9WgSWXZKjJALzUbMJOLXuqexCm
	SdS11KqISs9t+S/mAQiHsziIAc3upsOcob29wR4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659552052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zIKoz1fSH66spwqyIdabNvf7+t1K6V4yot5gMwEUYVY=;
	b=ajDMxCTjuxoUamsY/ZSNCEzC5ZKiiV4tN2xPzSADdkMy/lubEUd0DoqKU/8YMG+R
	HgSKhknAMddUL4fHQoylaLCOnD1RtzP+Q9DfK6cY5jMibWh1/A1z38pLkIwMr3ePi7R
	XXoBz0a3qOi4IjpsSj4Jj29s3+5vHMJ4YlQttIfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826502b5db-f7f3416a-d2cc-4de6-8d88-34a9fbbf216a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af16aa732f99b66a799318caa703d028789b7caa1d30932eb0177bc4460ab4c3
Date: Wed, 3 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659552052
