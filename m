Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BAF5382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646036784;
	h=To:Subject:From:Message-Id:Date;
	bh=OfYeZox2Pkou7zFElSikPUaplKRbnd5x+8h2BR3VMvo=;
	b=ShMNpcCtBwgT/zpZ9Uosu0g9tvYuTxnJJtKwnDyhYvGbgVpkR46IReXPTJgWEJ2i
	olljAjOp5yqNnJ7tFmUvyoMomgJFSeUn3TJV1ZbPUEjpoRe2u75aunvlIOTvRMC1eqv
	n0twyIclzp9+DPubB82DT95IlgJ3tbzangenT7no=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646036784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OfYeZox2Pkou7zFElSikPUaplKRbnd5x+8h2BR3VMvo=;
	b=FyeUXDhPRdsanWvIGsWaUu08qQ13WQEMkoys8wLWN2AUziUxL7mVBqv460Fw5Tql
	Xcvn5WGdnSf9Yold3jKoK349iDMKQp7jkOoW/+DfAavjZn6x6oE/9/FZ8k38jnV/Xph
	PFpalfXzytlfE4dS+2J6pMXq+9dlp/A0cOHsv7DE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f70163d-b65f0de2-294d-412a-bc6e-9399fa84f0fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dfcf567143a674583a3b75d1b11352f8e3421348a173dc48e8ee89010c18662
Date: Mon, 28 Feb 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646036784
