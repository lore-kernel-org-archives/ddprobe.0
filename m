Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917086469
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646944585;
	h=To:Subject:From:Message-Id:Date;
	bh=FRjmPmVcDyzxxbhvnwHKk5Ayk2bjKgOcjFL3oq1aEe4=;
	b=WxIQBjG9vPEKl7dVNf9Bm72nNyT6+MkABzvcq4wfNLV7a4/DkPR01buJ7iuuk91r
	w2/a2ug5+sCVE/PnzNAua+0A6+Rrd4Pj+4z4NZ6xK83j9QER4acCwLiRIUBz3OjQcZV
	ToXC0ayWgwa6KN4cAn4Z97aztdh0kh9gKsccyYjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646944585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRjmPmVcDyzxxbhvnwHKk5Ayk2bjKgOcjFL3oq1aEe4=;
	b=ejow1r4ohcWPNj/g0Jan6d3HRXgXeoUoqK7eqXuWD6/j/Q4W1U2PTV9AnIBUFweE
	OMdIeRta9CGdiCF7aDxeP4+bc849RxQRtCUv8V8Qm7WV8CkblIXEQ7JnzbYJboD+Nir
	eH74+VGzKYq+pJkM2FKm92bFXKaNH26zLMcmt5rw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f758c044f-defb623a-0e6f-465c-973f-36f67e4306d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ea8b82663c06bc0ba0ac85e813e92041125127c23a6f46e2e1f51c7e88b4973
Date: Thu, 10 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646944584
