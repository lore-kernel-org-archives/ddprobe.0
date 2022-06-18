Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C387B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655540039;
	h=To:Subject:From:Message-Id:Date;
	bh=1nIT5Y0T9J2IgCjK7SullbEPl0EqqkgrhAmbHpSR4d4=;
	b=OXBKioNX2oRQcDVi0+ZLXmbEXnCV8yaM+LDjg6GtJKDzHtoNTsMunaWCPmM+lBE+
	kPsUSbnhrHQCi6lDJOox/a50yND90i/oMlL0QD+qYLyy8BEnwo947DbHUGNDCWWOfF+
	ZJOYu6SaDwxELvgwJNSFnEdXIFu8xlav4kE0+kTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655540039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1nIT5Y0T9J2IgCjK7SullbEPl0EqqkgrhAmbHpSR4d4=;
	b=PccorpT4b9bBCfZItjNaBfyDESYaQ5pItANoUTk2FTxAPc/N3byJuyc6SwRA/cSf
	OQ7FnHe+44X5Wd/1BhKAf2eKPorS2A24uusToE2el1tIxMwx6B0MXETaAqMq3Uka0VX
	F4Exw7SkC/WRo6bGgACoIXs346ecUpK+bAg7WAVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175e03e87-dde42e23-87cf-45f3-93fb-021b75446a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e272bfab69bdd2ce3650433142fb7846448d1f0106e13bf555437579a3a9bd68
Date: Sat, 18 Jun 2022 08:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655540039
