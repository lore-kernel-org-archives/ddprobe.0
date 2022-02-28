Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED4D5382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646083885;
	h=To:Subject:From:Message-Id:Date;
	bh=xeaRLNdhSdjBhBGyOKWyRZ/lTg3qOXgV4li2Q/lYhE4=;
	b=howvmwq0ur6hJq3P/rb2n0CjE9bgCzeQBLgUQi99jhfBfVKPUPrs+fv4wN6aR18X
	biZgt//IMLVcov7zZhY9vHJpDGFx2JkOJcJIrY30ak1HJAnnqdfNJs6u+uWgyOrhP3y
	P99HnF3lmkCt13k1qlPm9fkU9M9l/41BvqSvQ8eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646083885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xeaRLNdhSdjBhBGyOKWyRZ/lTg3qOXgV4li2Q/lYhE4=;
	b=JYLqvAYIWdnmq/G9r8Ac/S44n5BaP/O5f5yvrZSll66ombkSyJJ4kwC1LdIzLdDD
	ICjVeysoPNHtNktFp2zy9nCelh7sMBUuiiCdKDusLkZ9UWJ2Vzupbc3/UiAkZVU0vUw
	L7WYpiPYSWXbzumtrX0nZ4sNFHZBR/rHTu+RzxZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f423ec70c-f8b137dd-4b84-4f3f-b66b-418c3dc12cea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45b2587b6c1b4c5c5b1d9cb4f3e93a12638fb2d2d1be468cb3b83c2f36a1cbab
Date: Mon, 28 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646083884
