Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1417B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655544479;
	h=To:Subject:From:Message-Id:Date;
	bh=il1rsom+O97ZwuwUuzkIKrk52rrOZ6Pf+wiIduihK3c=;
	b=JSxLK/aSyxJDS/AQeFk/6CpEPhKMJ7MEZTdgVErkBP1XXz9/BAiip+ZJF1s5WotG
	GMaaBJ8E3ipBN87SQ6IfNJ0Zwab1g+k/PPHUAy2xL+D9OrhXhJCTyQXGcyO1xC1Vk2y
	4TKskAkQKojGmN9StVZn1EM67Aalxi3gLOvxSYgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655544479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=il1rsom+O97ZwuwUuzkIKrk52rrOZ6Pf+wiIduihK3c=;
	b=dGrnt82F3TAX9mZJ2IwbOs5++v9MStiOk4eC0rqiejZh+fPE2Yl6e2/BTqJQiBQO
	dzMRWAIEsbBF0oxELu0eceL5d+34QjxyVCV1z6Cr/yLs3GpGnwBjdB76mMMFkDKXR62
	84gbna/musqKWv58BBtS8jyAi+B6wJH87Xr2VEng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817623fdeb-35d46bcd-39d2-4829-b8ee-167dc188a682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07cb2f685b681847770a492e0a1d1f1b394019fcc2795127be02ad1dcb7d2e02
Date: Sat, 18 Jun 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655544479
