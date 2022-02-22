Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E822A2F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645564285;
	h=To:Subject:From:Message-Id:Date;
	bh=q/KJep2aclTSwGQplzX9GQiHZSiBnZC6hc2b2eojv3c=;
	b=F4o76xmqHuOfEmLuPhuGzhFImXDyZQwl8RTSP3loRMl4Ut2tHurK8g/V2d9+VHIq
	nMZgr0IWNkal0mWDGej5O0UH1Q96c5Y09EHFO/5EJp0Z60tqT2dhViJZiQ3I4DWhhMf
	PnLuKCu3Kl+MjzA68/Syb9IykFOomMu2LadShTF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645564285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q/KJep2aclTSwGQplzX9GQiHZSiBnZC6hc2b2eojv3c=;
	b=DouRQJTZBDhPaidvQ8dQQSGkymH7cZyx1tlgQut3cNQWtDZSLCKt+aNFG8Htga7X
	jgeqWxoS5jef0o72q2RaJ8Hnlez95JZkkJrS3FhN4J784Y60AT55DMYJzJ3hI46z0ci
	5imPIiTV5tk0/uBYO58BTbp1cKaPzQW7MLcHErMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23465035-897e017b-18e4-4787-908d-e5adbba9db5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a9322c409a35b0eb3ccfb267c9fec991a937a476094b0855d882049f005835d
Date: Tue, 22 Feb 2022 21:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645564284
