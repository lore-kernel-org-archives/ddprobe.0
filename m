Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B857B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658189812;
	h=To:Subject:From:Message-Id:Date;
	bh=k71ygIIBOxwe1CxMvhtZAuw5ETaZe6oUjgyFJVVPXyY=;
	b=ACBMQ1SGqu4ovI5nIAA2rhPhWBZon7Yhx46wsXw+hV9+QWOfB9xeKCD1m4SeKigR
	Wi6MU2TrFWpgLW0E9Q86njsAXOQ9Jb+Yp4qJ0L3wNImM6v5+1T3R2ImlMHG/Urh1nC5
	/QC9wXumcMGhd+be973Chol9jPvBENZw5WOJyUtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658189812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k71ygIIBOxwe1CxMvhtZAuw5ETaZe6oUjgyFJVVPXyY=;
	b=TqS4tS38gdoIZpeQwcTmPCoGMeGYzoyQr4YE7dE5lmaP+HUz/LgrkChtP19fRonW
	cAH8Nk3ByfMP496WbSt3GSzBOxyJDgH2UwbTkrPkja7dFB0Cfc9AvtJtVfDEVS/R3bL
	jIOXLeM9SsyBcC3ZMwEGTZ+mu1jSOFGCGR5+vlL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213d09266-847bda93-c0a4-4cb3-bb6e-a8409492eec6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4bd7e05bb039130cba7d1e7c3a4a224e08ffcb68d76551301a7566eb8c6580d
Date: Tue, 19 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658189812
