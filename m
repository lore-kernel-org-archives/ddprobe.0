Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9727A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646802384;
	h=To:Subject:From:Message-Id:Date;
	bh=tqde23uRuQZz6a1Nvr8AfulqKbOWThf2sA6hCY4jLLc=;
	b=XFSF3/uIz8fRdUrS9WgUfBX2ECeTzyA6bYS+mqk8vDyPc3Qy/mdWFv6e7qn4ZgGi
	QzKXCnrEeroAo21DdquZacbTLLqVGikeN7Sq9H3lp9qwarmtTDo0NYom+ToLAk/DhvA
	TxXzSdshiZYqbxtE9WYAu5NmrNHGqQp1ES5LUCYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646802384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tqde23uRuQZz6a1Nvr8AfulqKbOWThf2sA6hCY4jLLc=;
	b=HoQl4Lno/xcaSoWlAFqiAsVAUEOKzUtEzhtIIw3khuL7HerjiDjSMhUSMoGVBRg5
	AVQYKhQKHHpwm/5mR9Zuh/ZdWBRsyFmTxKsL8VU+l8m7KOL0mUD/K722cB5LCNWBA4A
	HT81zW9xL1e4TmLD4NQ4NTCGmACPqr9k4o7ac5bE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d12375a-472c704f-d0d6-403c-8582-54d8581f29e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a888353c045b80d919faa508faf9de9db522c8aa3f01deff98e2d4c0628952ae
Date: Wed, 9 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646802384
