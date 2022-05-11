Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095115B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 07:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652252399;
	h=To:Subject:From:Message-Id:Date;
	bh=2QnIeFyl6SuWcBEWYJKUWu7nQ+kfdEZIWT1A85ekoBE=;
	b=VsHoosh+dejl1g7I0/eq1dJCM4TSTpwxrLmVhxGBNxZNRCcd9g7VeApsMXIcVcSH
	NuJ1tWUUnBMaxWtEKH1Iptz2gZahJHIl29EG8tfe6O+6+GpJS0CbO+9CHIhWLZFnLMx
	OH60RjNzROExGCblQFcK0gU9DOPT4N1MmSFOQW/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652252399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2QnIeFyl6SuWcBEWYJKUWu7nQ+kfdEZIWT1A85ekoBE=;
	b=k3eQF9aQf35QyuMMfEKENS9+lHaZ6E3PXJMWHicnfE7gxCLYXVnTFN3+lLG6+DMW
	hb+Ga7eaSASK3E++JU/t9Rxjv/B2wXV4ifYqIm5QtErS4lhZLcujZ447KTaTrJdNpsR
	mfvrj6bCBEimV/8M7Plub3kaSkCGH71NLPJPvOgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1ead6c1-87555b86-d6d4-4547-b5fe-ca6c317d0da4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 813b1812a619660ff59e75ea11ccaf3134268cba725cd95cbe401fceda1210e4
Date: Wed, 11 May 2022 06:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652252399
