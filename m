Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860F910F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647307885;
	h=To:Subject:From:Message-Id:Date;
	bh=F5Ds1QYRbDnNPXTplwpsFzwWMl1XUEwK85F1hDwN1kQ=;
	b=fTincpxqoIsVbs/+VKte5MU+2DyyNuSs+21erdG2g4ZYK2OjBqzazhOanL2FoaKl
	TTixnEVcOErimJA98JFplvugwDIimn6nDKVXvU4PYg8hTV79nx6WqQvF+Tl3y/YBigH
	SZDzbVUUiuVC0BKo6sf6INZllNx8cP0h7NCTvp5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647307885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F5Ds1QYRbDnNPXTplwpsFzwWMl1XUEwK85F1hDwN1kQ=;
	b=NDweOLJBCwdgH7eJA6sJZAZZXVKn+JuMtcRndAFzuiypBQBsegtpQ+Vjpx2h174x
	4bQipNnPARB83csi/rlwXDO4K+Xtgw5I2MDT+iw/JO0aTY2hSEadHggYtic1hNBQyoX
	Ul4LiuzX1WynWD7wpJRKRaRWj9dc8TD9oeCfzHWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b3388c6-142cdace-71fa-415d-a108-e037bf871f24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4d62681c87a5602eb4194b73f58bcee4c4fc34cff5dbb5f5dc42bbcf4b3c5ae
Date: Tue, 15 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647307884
