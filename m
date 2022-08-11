Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB8C3222
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660228852;
	h=To:Subject:From:Message-Id:Date;
	bh=LuZQVitXgcfNosxzSCm86jntPVfACj9UIDAwtwdpk6Q=;
	b=K7NmbH5fXpdNtUd4ekqR1Jl2kqs4uq7Pes6nWXmJQ99q86QR9xoe6P0D2lZvDzeT
	FVOeDITICc/kpi+5HioPCb9DYDJEvjfmnxFV8cIJExN1xKRG88zoYNPdQH7+FHW673W
	PzcEStIXwtNc5IW4NZeTGbtBurO/5Es0WtEjVDv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660228852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LuZQVitXgcfNosxzSCm86jntPVfACj9UIDAwtwdpk6Q=;
	b=Rf/K4/Wwlpz0sRsQZVrLYp2AKrgoFn9I43aCkMMONYzgCo2LBsBv/tTVwuTxJO03
	k3Uwxvmw3bm6pIkK62lSx13J6dJDlHVsjZA31FX39fQdCIdohYXBqLfKPGBUICoE+jQ
	zfZyXjiNT0IcLoSGXTPrtUUZTV/qBKk1tW/G/ygs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d59dbb6-d090f428-eb15-4838-8e66-db6d1cab0632-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 276405af5b1689f128d5dd6b8c881c5fe4a714ec92b32117f9e287bfec664882
Date: Thu, 11 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660228852
