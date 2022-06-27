Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242EB28FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656327412;
	h=To:Subject:From:Message-Id:Date;
	bh=giR43tToUOkG2RjiL+2my3b2xDRUcBGf3oHLsWGSNcY=;
	b=gjrKQKrAJoTZB3fSPLW8tuOvAmoTEQia2jcX68KXg+p/2JjfYNKAYosDytaWqUmO
	e8Ffvdx0hAiyAVAHWi8Kf6cTLaghIXwszf7R1cmdtVwvLLD2sUtpsgTFEMRUUIcXKFd
	GAhOXmCgi3xM7tbJE544kHntJ6GmpJCfpQCB3gKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656327412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=giR43tToUOkG2RjiL+2my3b2xDRUcBGf3oHLsWGSNcY=;
	b=hmgcfwosPqxM92805glH3LqMGrUh4KSSdcmUnKu9VDUNq//WriNRjxbYW7p2e/jN
	pL6O40FR/TQZsJRkcN9VKEWDgodWfdVilIo1FluP7sWAmzyOzW1DKYD3/6hMnbtKklP
	lZT5JMO6diGSTpZ4uduxqrI4RVRm35mxgtPeyJos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4ce9a44-4f9fb3ab-552c-404c-b962-e96c4e389d74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2568ee936df073928374e2459eefff507166d13610545029d4e26b462bc3f39a
Date: Mon, 27 Jun 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656327412
