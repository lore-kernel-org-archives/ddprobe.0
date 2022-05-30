Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F1A2F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653920399;
	h=To:Subject:From:Message-Id:Date;
	bh=KcGIo+NlM3Iq1K4qC8YVkTc427yD1lSZuI2JnUjUuKM=;
	b=SbUGS4sX5KrmpL4MLFQ8f/cHG0kBI0TZNJo3K7Qv3iBst1sO4H7ViDDXMjzj/HVI
	0oHOCAMz7FxZuDfl35dOLsLa8uvxvb16+fSp75lpPH4Bwtc5gI4yvs2oOaDq2DRy5T0
	XvG/VIpKIyx5NgxqMle+XpVkeiBNCisnK9dtyUnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653920399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KcGIo+NlM3Iq1K4qC8YVkTc427yD1lSZuI2JnUjUuKM=;
	b=CU43whP2iVDNteLQQ9XXgW9Wkj3JO/pMs2pX9AEtEsKZFiJyOGOvUKg4hu1+WKsp
	SgSQW9LFXYzcEXnDkvKaDTSO12rxpbyuMvm1utwbc8QpK3kxsd9GRx4Hc4ocDrP4Kqx
	cgmK9Rnu6dkdEB0JLUnIsT+CWmR7YmqoZW5XsAXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115567f6c-6afd9ae6-0a13-4243-90d0-b355dffb59a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d2b182afc57a78523169cd6db45589519d1f0837c1e3acbdc062b14c8aadc39
Date: Mon, 30 May 2022 14:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653920399
