Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BD95A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646940985;
	h=To:Subject:From:Message-Id:Date;
	bh=d64bON3aTmYtaSWAqjBbKtBY4c2fPjbSBTvV4xHO9Lo=;
	b=mDOqLmuVlQH3MTfd2hcl7N8LsoBSCX+aLbE7poNJ8U4kiE+2kZUz727heGoH7A4/
	TdoOsVom9/b7+AeRmJWD7j1vlnTQNIdq/KF6X/7ZnQjvmt1v9O088FYPoxU8tqBDJnX
	2xSSLfJl25CwBnfV0Tcox6yH44RsUhP8lL6SnyaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646940985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d64bON3aTmYtaSWAqjBbKtBY4c2fPjbSBTvV4xHO9Lo=;
	b=fhFvFIv8UVpJoFVq3nacSLTJ7cPiGN+gi2gW7tB/PZAgACpIrUjhkf+w8cBeIfUH
	Zi5FGHm7ScvL3D3V80cky+Q2IIhtK17LBfT4mFkF/8sKjzXQu2GIYtyQyR75dkNRojd
	Mmx27LM6wRG9PuclGl0pj/n9Yr7G16vkVqkLFcqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f755515e0-7c7f65e9-3666-4eec-beea-478126ecdf7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6c4c91d612bcf4283d36b922c951a1f2914821fcd65a5ca05ff46e4f7462138
Date: Thu, 10 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646940984
