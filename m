Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D428EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658393812;
	h=To:Subject:From:Message-Id:Date;
	bh=zYN2bxhraBziUn1fp/5bRJbvc+yIM1z8pF9NmPy10nA=;
	b=Tn4ECY26ewgWSxvsJUTe3s1a+gluplu8Yz5SEKuJ+CCkO0u53mAAAdc3N5PigAW8
	HZrG+ul7cH9p3wHpd528MHsrXtAiBio/9p5b54+BOhoN/q5sjVzWV+rWAzGpYRzCBHw
	/ftSCURMKDYj5FD2mUZc0hmfSndKbRZO4othgzMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658393812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zYN2bxhraBziUn1fp/5bRJbvc+yIM1z8pF9NmPy10nA=;
	b=Bcg6w7QZMRcicwhAXUshIMpsKRG3x7q+LiQ3PNv5Hrb2MH8FWyf8eePJRLBtCt1M
	18Du8QNVWGq+qqW208YEvzr3sZyQUV5arlffGBHCQgJpK1Y8jYnckSPYoHxQeNKnPeD
	CMyFjzMaGgj7K1g6FsTedZXr4Ry3kfgQOpiGB5vA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ff95d2d-e8b4e06d-9578-4998-b22c-27df46bc0ac5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 480533148b5b39625489c8bbcd476f187893a15c302e70068273ef301ab99d33
Date: Thu, 21 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658393812
