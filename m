Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E473FE5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653780599;
	h=To:Subject:From:Message-Id:Date;
	bh=ho1Pxt2eT4PC4xiicMu8flzTBZo8A7hSBa18PTzydGo=;
	b=BDU1rHWChjf+SVHslobbd80nf05zKvG9O3EZNN0L/iRSs8JPfpjMD89ve+dncmrF
	nzKghs/yfQYHGW23CVy12fHQ4xIb5aNuHDKnzShD9OiejJigq48AKXkT4wsLZbQqs6f
	sRn7hTxm7iYf/JKZvhoPnNpOCGZtayCY7sgtmGmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653780599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ho1Pxt2eT4PC4xiicMu8flzTBZo8A7hSBa18PTzydGo=;
	b=PvYBYr9Ri7Sk6wVfSqJG8z5MLVT4BCFnLwEMxbH3xrMaKBGz3c8t2DA6eN+RLkuT
	5DMyJ+nU4Qh6iJyo7hbNdQpK1rdEwM+v/i6YSTFo8jZOdLng/CLXTphedp1E5TZ6o0O
	Nq4fy9mbelgRrGZRxwskEpqQHdabQYf5TpFVUvjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d015204-eb08a49d-d428-445c-bc99-c6cd21e72867-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fb0df3ca044adf3c51ae4347f6648e13696daf9980bb09cd771af641c34b56a
Date: Sat, 28 May 2022 23:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653780599
