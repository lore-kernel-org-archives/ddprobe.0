Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F3F7F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 14:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651847578;
	h=To:Subject:From:Message-Id:Date;
	bh=JRvr2qNew+nYHtKh4DlUfcwpND/GZ46KIkIAGsTy3L4=;
	b=V+W4WIQgGl4ztihZmJCLxEYrpiYT3tCIaVJl6Vr3uoKX2p0vsqkFyGDghgzyNsrE
	dXQIDP/kEgE78uqJwyCAnBztxWFr9Q/3+825TB0F3mPucpQB+tOtNiSmJOyV3k0A8lA
	WumNNeffnpgZAYP9sDqD5GhqGnJejbS67IYWVqE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651847578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JRvr2qNew+nYHtKh4DlUfcwpND/GZ46KIkIAGsTy3L4=;
	b=eeJ70Yz1Ymzmbuava1nwCPpNdsIjbY5qf1eBixfVkes2o5KfLjm/aTpB8KYeZd23
	kQxslLSjn9NIhQTGbBmbBOEfm25DJ4wmn4eiIAK2+tXGNPqQFZsgiwdR4avAPT7LWrD
	Pzg1UvVcbQTB6yPJ8ARGhvC/IYjgdqbn9jGoFlqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018099c9c28e-6f0c3eaf-ee6b-4117-91e4-dee6ddc45c3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b91b59e7ce3d3881a8439b0bb1f1f4520748cb8c9e7d4652c5fc9fcfee8eb33
Date: Fri, 6 May 2022 14:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651847578
