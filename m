Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D459365
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 13:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644759633;
	h=To:Subject:From:Message-Id:Date;
	bh=NFhHQisMa3NYuddsG6FL8Pxsixnu0xcAEYzQ42UwS2w=;
	b=eAc5c2unHzdHSyrGvoTrdInFcYnEnrq9carXs0fVyxyqgsbAQ+N8i9ZYgQLvgUPf
	M/S33L0uuLRDhvvZzTpbkIkeKa4iIAHZ9ggyrjjl0ainSJBGsIkkZANMGAs4f7acj+l
	uTAfa76enCGR55XuJSHsxgPuBQyZa1+29GoYiQ+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644759633;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFhHQisMa3NYuddsG6FL8Pxsixnu0xcAEYzQ42UwS2w=;
	b=fMfgcuHsjbWqGPxXZ3pZIsHJVP60+Fqt1xd9uwxoV5cvXe1kJhhMhFHC+Q6kJRX2
	1W4ALYFErK4odZXSEe0IimEOS52gvhnvz1FHPLVgz0oK46OOzJfX36T+xJhE+CvvIDA
	ya/DsRKnsrQDX9w0sFauA5IDz0/Th2tXxb622d3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3504e70-9292e4b7-997a-40e6-b3e8-fd7dd52615c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0240ebe49f537e8d3fac9226684c8f3d6aad8a9c2f9784646e475abdd6fd70c6
Date: Sun, 13 Feb 2022 13:40:33 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644759633
