Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7191D362
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645518984;
	h=To:Subject:From:Message-Id:Date;
	bh=ToU70BCPem9YJvvZ//pIWajbeENUjigzbN8IZ57jdAY=;
	b=VXrAZxuWBRfgSX23K4VkhPJiVWsJ0nk66Cza0uCv4yRxNQzdvMr++l10oaUlO3Ky
	yVp8vOJSImg/+R0jBR4E25PhaLYtDYmhIg7YCUJEh/05FHft1Mr33mfGdmlDLnx4a3z
	sCwEHCYf49zwDgTQLy1XgovH2KrMTQ/HBHTy1cA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645518984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ToU70BCPem9YJvvZ//pIWajbeENUjigzbN8IZ57jdAY=;
	b=fuxB6y4+5BGueUHOAKpa68VeOomC3l1yNTSPNJEKLeFZLRYd6lYJ+lxazRIyAUZn
	BBfJwPgtYXx5I6fBoTMXvZH+3N/fG1dCME0veqtstJ/pFR9f4Yz5uJkfxt5Dgyf5Hg4
	rKqSczXBzQxNkPzdpE1lHiVwbgVlGulj0IbVvEc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20931644-4ea156ed-380d-4e3b-aca4-907874ad7cb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e4c843ba66d07d3ca7cda7266de0a20662478a67707fb78ca29d14ad5952750
Date: Tue, 22 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645518984
