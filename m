Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C8646A1
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652855099;
	h=To:Subject:From:Message-Id:Date;
	bh=XBHbsg5mZr1L73a0lYejIZf+zCZw4+XmiDT4XlghCd0=;
	b=ejbx/lhPFdHOmgn9kkIpF9Fnj0tyAGFDv21nZOgbdQkFstFcPmgrPHJSAlC/aZyx
	bo7yOmRyYtT+axckgNn/sFuiJHO5izZeeLelkt2M5QbVKirVlF6vo7TRwVt8LYZIBrM
	du1EVcGq5UFGDsD411AFKPxgvBLc40rtSbuTNMWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652855099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBHbsg5mZr1L73a0lYejIZf+zCZw4+XmiDT4XlghCd0=;
	b=TV/Vmw2PE7wdN4qJDPSYrCVbau9ySXxxZJWlNJJOtJVoKCb1AK60xa2TCgeTB8YM
	nTqhi0d525U54UAHJt9zzvCJ4rfUJdxx1AU4wrUziYrwJYce5rTrQ09VK6CMoA2JhiR
	KFjtGBSoJBLkzU/zg//PZws/u7b5O+ukrjtMf0Es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5d74fb7-b7917b50-01ea-4f09-81f9-471750056d7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ec8d5923fe3998b2a5b498fb5e90a01eaa3d888e7775232835148bfc2739331
Date: Wed, 18 May 2022 06:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652855099
