Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4635D5CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645356384;
	h=To:Subject:From:Message-Id:Date;
	bh=lbkqT2ZMB1xZHG9sUwfx7fO4+GXywMSPh/jusdSxJEk=;
	b=UWQZQCN7BpVb7++stfCdsc2jjCzM+5dMVOvmMvjlPeRxGB6FgyEbFK/iKRdC4eqT
	PNEC6FYVzyXjBerHTJtiOog6imxQFVR7QkJvg8B0B6VCxYfE6PSEoKguGVQ3KEMq9iK
	vVB0/35p19BW+rq3n5Nz3trAJy/5CXQtDKMzPiM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645356384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbkqT2ZMB1xZHG9sUwfx7fO4+GXywMSPh/jusdSxJEk=;
	b=Vg6/XDK5pKkwyQnU4uhAlyGdYjdVV1Xp2L8nBZdYS+IUCllc7TyIpZlLVGE5v6Ge
	gMpq9v5owl14kziyI2oL7cnYwRtrjrlRTnxW1+g/6ZTlKwq2EcKTh+BYN0gPhjBus8Z
	WlVgxGWZU8nvDp/iMP2WOENNMZiDVTw26XGveXUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16e20218-34752c2c-0218-41b4-ab01-ffce48dfb673-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc9e29d0ebae1511ce5596a546b25f2de1b1210a4553bbbc5b583a655602eb5
Date: Sun, 20 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645356384
