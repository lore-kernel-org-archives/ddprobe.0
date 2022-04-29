Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724287B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 14:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651241818;
	h=To:Subject:From:Message-Id:Date;
	bh=sp2c9/x4OjU+OfTPLH2xrSap8jsbsYFtfWkIjlCR0A4=;
	b=iFkvky1cl4h2G8YT5fnfv1BetQlFU2SC2Bd6kuJ2EnJUdI73qI6kNo0yyLPvE6Y4
	3MLTgbUC4uzZpjQPHSs4DhoUMt+cXaeahFC9pvhc/muR20jyOlLfaBP4CXP96mxR9hu
	Bz0nbTSplxdQs4fZ0wjCOTk+DAb3E7Bp6fVO+F+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651241818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sp2c9/x4OjU+OfTPLH2xrSap8jsbsYFtfWkIjlCR0A4=;
	b=hIq10xCQirzSsvWDnDrSCwaybJBESLrabNgz0n+usLWEd5fX6jSHgUJyXVcqIRqE
	T5KkNMVmMhtW/Q2hux6A8FVhtC0eqySjgtKvVV436ndNfg3zJyw80bYy41vlt8Ahk9o
	Ig4dCJg8vjJDGVKOOLs5/h5n7+99g0z/AC+QpGXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075ae9883-add69bcb-5e1e-4e6a-9b28-d0f66b2d1f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d07169293113e3d0c3c3570383941451f1589c9645000a6682ea06a14f67a835
Date: Fri, 29 Apr 2022 14:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651241818
