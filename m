Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FBF2576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646209585;
	h=To:Subject:From:Message-Id:Date;
	bh=0UE84mxZRjsDdeTJaZxCh26ddiwI3QrxtXQ7iYkrPQA=;
	b=ZGpEIU1xcnXqks7++7uDM68tB2h6yBENBi/SwpA0pxvMH45QuiChmvkMa1qBhSPa
	dB0v2s03PrAgAYEq1FKfmi8jEforWfhgtacKNchN/7T0ZX/ojGg49r/4fGFLu9w7A/+
	CeCzUPvOEMpKNqTvdTiycVUVQL4WdoH4dsgQURaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646209585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0UE84mxZRjsDdeTJaZxCh26ddiwI3QrxtXQ7iYkrPQA=;
	b=TpjwV1aZfv0RMvfKZYW6kVZ+4GXv3Zi7u/GjutvNV0OxAAE7+2UvAKu6geBGIQ63
	RKC5ZsALPCg0/aDBT+37NV5iHk2/mZOXiZ9Q8sfrgDtODvWCN/q4A6+EYxtFx378Yhs
	+Ac3g0/hpng4h1k3DdBfUuSWBRvMN410FjAmAjcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49bcce8d-58e8ff12-0716-416a-a8ad-59640900983d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f655b50cc4318925e3580f3069195f4939bbcb1a45157fbd71685004f53bfbc3
Date: Wed, 2 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646209584
