Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD5323C
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647498384;
	h=To:Subject:From:Message-Id:Date;
	bh=lIG7RAIRlLQlfNbRyYeldpionpXwFVwa6lnSwjB3f+0=;
	b=jJQMapH9FvAkWX1UOgUEEYicEYlK9xM0iIWFVzRCLWefmSVm4PsQPwrpPJ/vQYsK
	1+TH09YnrAsJOq66Y7K+OHinq+B0HOSTpcuz5+0vwFPbZToEAn6RPsxkrsXCU2x2Ow1
	rujH4oV725VuDz4+3ro1F3yV5MOxFgS9RXG6Ncgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647498384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lIG7RAIRlLQlfNbRyYeldpionpXwFVwa6lnSwjB3f+0=;
	b=dEsda6bZtZcD33NCc59pNjt/CQMfAtfT3vCby8JSYmDxIrnISKJrcXbO66egWl5f
	BM4ZBKVyC6Ps0sD0DqIgaSHwcNkoVhe1LSYlEEWDeF5rGpea9LEYMWixZeDyYoCnOoN
	K0oeL3lNKjfNxfTDBUyV/hlw89EVjGHxvTD+gzzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f968e5563-96cdc3dc-8d39-4526-a77f-4abf19a6d9dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 981c0f7213cd8fce5237fd630a4d788c58e85b97fdd669f4182d637b5c20ebbb
Date: Thu, 17 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647498384
