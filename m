Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CC423BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 03:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649821078;
	h=To:Subject:From:Message-Id:Date;
	bh=rkqfF/f1+qCLKdUJ9XOA15tc639IK4t7tK/Rcgf03xA=;
	b=cTnM/ZPYdTHP5FU2BaeVFxCbAJfyGFwC8L+aYhXv+d9GMQJ34EGx5q9V0d06/Lml
	TwQo3ciFWy2z5YeQ6bO2zhFIpHtmJrlkw6zgNmyNwrDEOGrcMgvk98qQfwKPg5WAz+m
	3frCqTpHzbLbfmhpC9NHOcB0IJQNNkYV3qCOYFEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649821078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rkqfF/f1+qCLKdUJ9XOA15tc639IK4t7tK/Rcgf03xA=;
	b=ap5ViAVL+z2Zd0Jn9fWxyhZdWULym3anplGNNiKOOTify1Le8m7wssaBH/Bxk3ki
	Frk5MhR27+Ky1kpQj45aidRVcIOmADaZlt/dwTX7drLpkuMWKlKwJQIyeVySGGd45Id
	RFgLFOSkD2T9hBIPJJo+kb1riIa6oFAw8sHG+YFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020ffd31b-b36fb7e6-08db-475f-820b-9632d8bf65e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d71bec7d489c11769782607c5bdf2e14487f56eb0dc8292556b0789d527181
Date: Wed, 13 Apr 2022 03:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649821078
