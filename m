Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BAC7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644605484;
	h=To:Subject:From:Message-Id:Date;
	bh=J9OZaVMDID+/JPB5r61gK0ZnXxSwAiwFOKFFtLlZc3Y=;
	b=C4oudoBxIzIhgeCzkYEC/wXR7W5SeM3M0+jtoX7oIA5v5/GR5U97mFCS2MCH7ZBb
	TTE/QaZBXQy+kaWaJQWkdJkzrmavp82V31MsHoKqQyVj5F17v71RV9ReLbpVP6T2HiP
	Vyu1+iNdFvKRAy/9h7uS5biJ4XBOaDRAfg4g5KyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644605484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J9OZaVMDID+/JPB5r61gK0ZnXxSwAiwFOKFFtLlZc3Y=;
	b=el4DD88JVAl+IcNlPfI81ZjkqSQ76QFrhTtWGezuHemZWIxm91exGrKn0l2/lG+b
	L2VIhns11h2q2jXvXxEey8NVdXGxD/vM20+TWaBnZ3xklTcNvxUoLg2VZUDj6XeEZO9
	lYFXBYtZBbYiOlovxW+PPzr4YE9xZREAS5oZRLMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eea202e70-f3c0073d-a07e-4e19-94e3-d583dd1d6cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d0ced0f4e6da906c03621a3befc07dfd4b0039ec66f8f4acba206df0d1f61c0
Date: Fri, 11 Feb 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644605484
