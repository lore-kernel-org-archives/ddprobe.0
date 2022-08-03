Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67375368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659511252;
	h=To:Subject:From:Message-Id:Date;
	bh=KovyYwxaz+GmCPfzl04JMQwHdrVaYHXFnJznKnDysAA=;
	b=XZR5u/QuI1iaFef3fcPtwwz4thz7CaakbFB0V70VS6LNTUkU27aFrGObxfYga+HH
	gqmKwX1BikpzJu5KAFMkphGpBgmPz7GKaVvSd+lDJvTUWGUlxamcPwJH2RJ0BLWH1Yx
	kB8sz9mSa6xdgKpY3BugXNUwD9dFQDVDz0BPF00o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659511252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KovyYwxaz+GmCPfzl04JMQwHdrVaYHXFnJznKnDysAA=;
	b=DfXe7KLu1yxz39kqU0aTA15ROa9xvhOS6LY0MN9H2ZIvpGbtc5Wl2uoxax7jNLMc
	PbS6y/QrQ48XFnHK8wHyrtwOYASKKD/t5+WNK5CNWE9dtGMYIh5/e1SdvrTDyKT6Xtn
	ppaCCgS4K13tndlkpVbDlbXhgwCCY4CqUzrp5oAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826294265e-90c6e907-1349-435b-a12c-7bf2e40ce6e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 918d4f057ba467f789c89297c0e495fef6d597d6159f08cf90c29a883cb82183
Date: Wed, 3 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659511252
