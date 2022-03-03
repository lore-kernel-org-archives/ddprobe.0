Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7F02F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646331085;
	h=To:Subject:From:Message-Id:Date;
	bh=+aIfae8LljbtaOm4HocUxZZGqNh7Pogr0K6MrNKJYyY=;
	b=bLx7hv7mzXOMLS4f+tmqy2Fcd//dz6aY6eVOKBC6hadaCD7tQUYPbs/jU5dmL+QC
	QCqkOLsev59ZW8kxClCaFelIf/csbAiXMPa4iKAWXMdlLC/k2dFLJz3ueO7tdpX95f7
	4ZuQFYt33QkT7lck4hzcwzvra8AryNphz2UV7/qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646331085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+aIfae8LljbtaOm4HocUxZZGqNh7Pogr0K6MrNKJYyY=;
	b=CZsZQUpBOnPHjaPBfss2wT/fbx5camSHDdBjS2BqVCZv0FTKStCO68wwwgFmImt5
	NN+XsK0w8GPmJ7ReK9Y+JgknAKpPvzvI05ckLv7NyKbpIE7hftR1hDFLflxGju4WehH
	rdN9jOnlPJi4y6Z3dogPE25eUYO5rEg3tZBmKRJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50fabfb7-bd77ea4a-fac2-40bc-88b3-fb3c1e5ee438-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d180d379e79e6a878ddcb12b43a72053fff14d0cc62088e2285d0c7ac6337ad
Date: Thu, 3 Mar 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646331084
