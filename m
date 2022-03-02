Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1846153
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646263284;
	h=To:Subject:From:Message-Id:Date;
	bh=Ih6mP4FxakOpiX5uRy8f4Rc0mtPRT6R1NQz96vQRg+c=;
	b=MFPhUsaz3SQ3KdCbc203ApRiCcu58iwT7uO0mS7cnOoLSVZsmc8/q3Me3bZpf2Fn
	rdpG5Jy/QMJJeDmd1fQjWP9GK81PMqabIphK13J+jBrYtGSdGneMw2CgFK5lzBGelWW
	svwLBK0d+kVFuYM3c2fl0ABdbVxLLtKv4TLlvqPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646263284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ih6mP4FxakOpiX5uRy8f4Rc0mtPRT6R1NQz96vQRg+c=;
	b=MTljKMhQVjm1CehCF8+x7XV0nLuT8VPxHTRsvn3wPD+ECK0/qmsycDuj0r7sHHfZ
	0Q0P5FFsTTd7rVfVoNhGR6p5vxDu5Z6YYtnKUZVDKi9HNw8zfSySxNlyb8KZUiQG/jZ
	2q1j9NSEsUEIFxtwr6jTM7KwD3LoX/0O3h3f6ALI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cf03410-210058f9-945a-4309-b984-753a5bec0969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdf63df26585ba6099b021181b70c50d4dc168585ca4ce122cd12bfe5877ac26
Date: Wed, 2 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646263284
