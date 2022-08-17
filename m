Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE8723CB
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660716052;
	h=To:Subject:From:Message-Id:Date;
	bh=Dfaq3ZN9arpnUKjTLD5b7YgHl+TpVf++qFHySbJGFAg=;
	b=Am5XUIb3LpguMDWxC25TjLNSIGJ0ZgpTunNzFiSvsTT+KRGzawKVu0qUtOLfBOTZ
	tDkby5fedY1PpG1KqQD603y+0ecpAlWv7hxW5xTXo98VnGwLAkfc8EtUOPueSMY4rMa
	KYPWuNOLuCIprZPevVYklDcYYTiBt7JvmW10/j9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660716052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dfaq3ZN9arpnUKjTLD5b7YgHl+TpVf++qFHySbJGFAg=;
	b=HNg+hL4QbJX08SjMP4XAbE+S/B1Bz8208jWklC26qML1+DxTEt6/1cs9ST+3md7o
	i13xciEAXl0F2hq4sFqHAsQX/0VC14c8oW+1owZFFR6/SzPUWpuWcsTds64lIdoSi3N
	ExY5c7Vf0Xt0YDNRw+p4l6FxpRUf8dFXG/uUnxpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa63f064-39a2f10f-bc1a-4fa0-b386-b89d5ff97152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bec676d1aff1b5a9083ef9f84b2a5c7a2b1f1351cb9b6d871d69f973792beb8
Date: Wed, 17 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660716052
