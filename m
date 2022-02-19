Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FF52F32
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645313785;
	h=To:Subject:From:Message-Id:Date;
	bh=FwpEh+3rtKIzMu7sfX0IiOvgB/D2XzyvZm4huRJ+jdk=;
	b=I7BSL1l507BLDLXERl8/AW0ERPM1ZFtGrIealaQtuL568rwTqkJ/NhwdT7XErJtI
	wj05IheiX/GeDYZrRi4ZzXM6Gc+T+DakP7qpRygrAFtnFLgzy2zOHsGvGxWYWHN9RLS
	zcWa5m5sBqTNoy4iSm1lQjDaWW4mq40x2FxspWKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645313785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FwpEh+3rtKIzMu7sfX0IiOvgB/D2XzyvZm4huRJ+jdk=;
	b=lRP4stDwki/Xadf6cFMYRYlJ8InpW3v++/42GlZzFoIompmPlwk9wgBL2+05uxK7
	W2Q5l+0qdw7BjUrzwo3jG6TJ7scAmq/gRGXGbz01FZB+umyff9+yP5Yb6aHLi3gD7tt
	i/W+PD5ddL92G9AKkArUb2v0glyEJ8tWVH4eqMg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1457fbfb-f47a3f1f-6e50-4747-afc2-35b8e94b4aec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11be257646fdf4bc5b8c969aab6213555002477a8d3cac3bbcdc6bb592ffb0c2
Date: Sat, 19 Feb 2022 23:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645313784
