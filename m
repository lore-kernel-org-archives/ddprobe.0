Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FAB364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644741008;
	h=To:Subject:From:Message-Id:Date;
	bh=S1WeE5ojItgr7M2yrPtN3jeBe0ZuzHOfaGcJcTVwC2M=;
	b=eR65EPbontubXm4pIqVNWshqPu+b+IDFMaX9VLr30q5GbsCtPKQ0Hx3OBRiEnGpU
	L5LgthkkyOqUNHoTEr3I+IgfSB6Q0XGqc7Rb5qETHDx95CilVLDs6HJTpZ0A8eIhOLh
	EL1pkzinsQ41PQrvnFPZeTAIs0pVVvhCSRmjekrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644741008;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S1WeE5ojItgr7M2yrPtN3jeBe0ZuzHOfaGcJcTVwC2M=;
	b=KlIjGH0KJJLCfn78lUHsXZkZLoWBjh7CmFbgE187tnyEoMntcBVY+Xn3p+w/1n6R
	iPlfigRRLY3CB+ytig++xwxsuIRSwq77obtQ3SRBIVXYQ+B97mPjTi9ltXGTlPLpaE0
	lPb90R42h/Ycu/eutWYUFl9bj4TMq3JHqLeRs1rw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2341982-7d9241a9-c35b-4f8c-93b5-82a52caecf37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3805e0082114c077a5885cec326f884b34b27d270ba295b14464b35847ccb827
Date: Sun, 13 Feb 2022 08:30:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644741007
