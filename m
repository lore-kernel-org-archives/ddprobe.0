Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883A54280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647086185;
	h=To:Subject:From:Message-Id:Date;
	bh=mw/yY4+52Nu1S5pAm4dgBIYz2YfSyKR2XM6afhSHdVM=;
	b=hSfUwhKH7pH2b28Slr6TZu+1ifjW/OZMLnW0g/WR0LRxXgvt69TjOCN6JwMO1EfI
	F2n3PSsNJwqap3jX644c3ZTRuEaXaVOC1EGRkdXjZm6cQ4Rz4sOKxJfoMnZUQs0GiKY
	D9NEhaic7kOjC6TJ7W+j3SlSW72TD0sZ3YEunvkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647086185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mw/yY4+52Nu1S5pAm4dgBIYz2YfSyKR2XM6afhSHdVM=;
	b=YyDEU+bXLXvABbzA97Sz6sgHbmu5vUK7h/f+XRoKDQVLrcWz3rNmjd4Btk2KCrQf
	p8lFkWTnRx+q62Ovrf+e1019orONlpZyA5J4HOp3ehJ7P7Zd0eatea+1MtNlh+hlcvz
	s8WTxvkt510LjM8MxkAq94F1bXePWmCkXRQrs7bU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dfca96e-4e6ebef7-70fb-4bd6-96f9-5e54175c248f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f955d50a765a06eae5ec02591c8896323f80e9ded01830e9278b7862b56a721
Date: Sat, 12 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647086184
