Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77349A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867200;
	h=To:Subject:From:Message-Id:Date;
	bh=hXM4vnv0uKIhkAGwWcHvsZt/c6Q6J+xfGzdbo/h/sdY=;
	b=C6U5IfxbSTfoiEYEPECmu3Yy+VnmmSArZEnU+LPt0pQqno+TeWrGcRfu1llsLyUS
	PI2JewcBICkm3Vms+Hb3MsSBAwULjWwPwVjBlINQYq5Jc5FC2FMw7NyVG17fFjik3aB
	OdXzzJMhIP1dPShuR/YCD/0YK9A8REkxqqPl7UxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867200;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hXM4vnv0uKIhkAGwWcHvsZt/c6Q6J+xfGzdbo/h/sdY=;
	b=PofSdTjVUg4fAuOdRVQXDzmfyEozeAy+Y61ayDee2drN2ReZ6OpHpze9rX2U9+zo
	K1FYp6U+4zdkwv4fipFKlj9tmM1Xjs1JfbnOQr08s5KNJWqD6f+PdIxl7Ht2uA9AJdb
	0EYxYPF86bdM2EGuWXR+xhkEV5lB7O0ePqCMd3/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b9a31b-70fc2e02-76fe-48cd-85cd-8816f5c2289d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee06de7c9aa7da537db3908e8511e781a865f7c03c219cac626522699d40b648
Date: Mon, 14 Feb 2022 19:33:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867199
