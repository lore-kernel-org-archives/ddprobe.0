Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6454620E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647669384;
	h=To:Subject:From:Message-Id:Date;
	bh=znlYhXLM+8GIclzencPfCbZ4/DnHWLh6v2MeB/INbUo=;
	b=DfLDzUAjvScp/Flnpjftc7tYkI3McgARn4SLIzVsjMM8Na6wZgZITaeDB+bPwiaf
	4pnycru80ePEptkUtdJswOVgwCNgoYQIfyOnNg9DXM7fpM+waIwnmak4vZqkYtydGqH
	82jwb4YkVOpMUq2i8ds4TyVfQQsodicvbeTa1t0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647669384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=znlYhXLM+8GIclzencPfCbZ4/DnHWLh6v2MeB/INbUo=;
	b=iJHicM3Uvo0tAkahmKX3mSBf37+nhs/ULw8D1vD1pImi0YoaUnl8cGWYv7xsc+4o
	E/KK3Te6yU7qw0aIidfsTgiVYKYKRkju5sxw3EOglcTtkGmP/FexHcdYIiruQZsp+Aa
	ioNN38lWh7VlPeVedzXXtI7YEZlSy/Hs63V3MfBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0bf960a-e85439c5-cadc-43df-8c98-b340678a3252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b70447e72ed8bb51ff653b866eb0da603d956cfad39ee69ea8dbc51d64849ac
Date: Sat, 19 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647669384
