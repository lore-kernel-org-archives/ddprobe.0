Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5320715AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647575185;
	h=To:Subject:From:Message-Id:Date;
	bh=HWvXMabylLswu38LUFMQZQBJYo8zbtOUSspEjK15V/w=;
	b=EXq9Oan4hiMSD+Bzwz9oNUDFCRuFrL+oRUN2u8CjMdO6OKjA0RLqHZGmaQDxmXly
	4HoPVjFZLZ/9Vd/PPgKBoC6sGkwoFRwhFq06V+MpwUAgV1xzF8OOLIQR2TrhEZl16iK
	4T4+0/8BQbX5R3TqiDYiqbScjeSx15ZdiAyHMITA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647575185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HWvXMabylLswu38LUFMQZQBJYo8zbtOUSspEjK15V/w=;
	b=XVeHyUnqC9NLYAnf7Onqd3bWHwwXkgS1yjH+NivBPbEFylpNcI9ZtdzUdVs4UjoG
	5m6gjwarkLfV+wAPRJTt06ydsPWl6k8E9S+f0ep3LZtfB+eybfoxsRn3IFgX0omz5gd
	6z14fH5753QM8Cfb0PsYJ7BD6dSyRAhwAOPOHaP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b22359a-ceb973f1-dfec-40af-8d49-ac9b136c52f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8816f599b844f3e342e0621f47a5490112721b053a7210bfde8556ebe939cb9f
Date: Fri, 18 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647575184
