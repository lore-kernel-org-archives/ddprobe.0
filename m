Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC467E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 19:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650999718;
	h=To:Subject:From:Message-Id:Date;
	bh=LPPdqqIIOpKFW9azxI+yQjNUlR1WPBG977zdcA2o/bQ=;
	b=KPVuBZ8iyrRt50LSBPSx2ycRIewfxP5V6g6Mq9OpOxNVlzWN1IvVTgVEPEJxhGrx
	nXdXGx1BWrzWEnWaKvuKRCYJW8jiuxK51kKWXAZ4+AI9I9fKU+9YSF+qeaGiilgeanz
	IIyzASKuD3kVGA8Quzsy0YDSlkQZNEzf/NYt8Ick=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650999718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LPPdqqIIOpKFW9azxI+yQjNUlR1WPBG977zdcA2o/bQ=;
	b=Q2xnzRuE84tXuxtUrrfXIvIoHCVv1sTaY2t5z62KPSwYEZEEurn2WMRm85otoQgx
	WuXpn8ddluQOju619clZU2I6zzHmWkHvy2qLgSn3lbH6gJ4/NQDdXw1GTqIA8xJIvVI
	Ln7O1MONrLqte3SyFtF/kr4F4KStN5T3JOYqMmn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180674071f1-e646e1f8-5027-4742-a6c0-e439da618a44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df9a6c1e18df02acdff65b200abea2021110c08fc0de6f5db2226529d5a362de
Date: Tue, 26 Apr 2022 19:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650999718
