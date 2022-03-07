Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995E7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 20:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646683885;
	h=To:Subject:From:Message-Id:Date;
	bh=736OxVks2kcrUk/wm1ejSvMyu5Oq0h0LFH+e/zWF5F4=;
	b=WMrtftLXTb7Vb5Getm9LamqalRlcvL1uS/oDOuRA4EO+m+7R1ZcokpAArTH0e//i
	diB/6xSmwhuYaAQuO7TxzSwFXlt7Py+VFF/sWA+fgTuqDupKvSRdrPok/FlqJDQiG0C
	Yr+d1oB9Xt3MkP7k9fZNvuBC3bOQF0AnaRDU+avk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646683885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=736OxVks2kcrUk/wm1ejSvMyu5Oq0h0LFH+e/zWF5F4=;
	b=hzxPd9venzPhnuasyJLXF5IcHTd3rtNf5yZlXbrQAkqGLdTp+k2PO1EPDUgljKIZ
	PFrHv6IT9kNthPZvu671umKC00mQmbmYXPlLswAPu2JxRUTZG4LKy52Yxyb9jRJ3QGp
	MJTenvATd5EFwCWZkNyZtstuI+Ohshoydk83k+lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66020d0f-9af833d0-2820-4568-a176-fde198ae61e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 074523f2155ce47a773c822397960dc8d97766772e8581cb7299ad562a709860
Date: Mon, 7 Mar 2022 20:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646683884
