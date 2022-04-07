Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1482C20EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 04:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649305798;
	h=To:Subject:From:Message-Id:Date;
	bh=OCkt32CbFIHaQwktT6u2WG8vRBiMzjwA+NaIMbs4eOE=;
	b=OcQoOzZHUtzctXAUPmSjafdGMb9iGdT5fMiSWCkZtmyMtCv1ewMWn5nhnlGAwHxa
	fjJh7Ir+pgcHP5UnYti32B5mn9hIlr8HrB+sh84FoCmUDRC9P/4Btx5S4trVY79YIOz
	PlT0bHgjyYlOG0hS+3+pT3DaWOf3bzoNVYGbUeJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649305798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCkt32CbFIHaQwktT6u2WG8vRBiMzjwA+NaIMbs4eOE=;
	b=B9x++jrgGIy0mZjbk+0Heqtnm0cWJCbt4/NRMt4dnSVtDYQg6Icb8xZszN6eTB99
	2FVa4MOZlX5X8liXE0C0psMEPxsR2lj+vGVcp7MqI+qjn2Hi9vR9RgU8Ajmz+XI/Pj8
	KPXFqk1RAGnq9gKIKacBl7T0jFxCVMEDJNPprJeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800249468d-bf2688eb-c862-486a-b92c-5589d3e7112d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 969b4fe8a98aeb9336068025096ab5d10f8ece07c04fc73902ae97da0bd421c4
Date: Thu, 7 Apr 2022 04:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649305798
