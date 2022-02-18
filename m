Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C966528E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645196185;
	h=To:Subject:From:Message-Id:Date;
	bh=yrLtYNlzylbC0OIZq4lLNEJiv3/HfofEAgwoP+4CE5w=;
	b=UoaCbLLJV60zMon674JpFw6WBWv4szvdP4Plb5PGeGAMCKsM0MrJguX3mATDiRZx
	gxSR8Z3fPHq9J39bSdzK8L46Pop7vinS1KhRKhciZ8s7xQftug8l6jwvJObTBRuQIHK
	ieP7VZXMLWQfyFaALpTl9tYMFEPtLCZU3SR5HGjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645196185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yrLtYNlzylbC0OIZq4lLNEJiv3/HfofEAgwoP+4CE5w=;
	b=WSWcMeR4Tf8Of9A8WfuddylbWn17wZXbOaNTuMiYtpVwzlo05go6t5/b0EP60otB
	vR7+3vwvm+pAhbK0Kk9ufqem4LChsKvnV429q4Ej4FskOAqHp6fKBfkUm+B/DzM0vD8
	+7dhLqb+jkifkXnhYszlBfxqM0J0Ma529CkQ5Mk8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d558cf5-a08b8262-d664-40f5-a185-8c8d296544d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bff889358d833008c650a98a3cbae44e50272212455bd2c163434cc441418fb1
Date: Fri, 18 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645196184
