Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3E52F2C
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658156212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZfN+EcJ3Yctf6/VEm+0oleFlvD9IVawj6MQXPCXInhc=;
	b=dWWKANiv5X0drYxD6Axn0PfQntZokcguFc5wzquU9fv1s+WXuBV4MyCPDUVlEfXz
	9GRhSRyNONP0+stzbfpl7XeGCzCB33LsqdjpZMNKmgAjEbg7PEf69BvCJYMgqro8i4Z
	oiNZJ3BA5BmDhb0eCkkiQEGQkh1IPCCw29oCGl+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658156212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZfN+EcJ3Yctf6/VEm+0oleFlvD9IVawj6MQXPCXInhc=;
	b=Y2kz7r7239SXbJHoWGCo9ol8WaLyVlOxOe7gkC62av+trOnUOZFiBzm+pxvWmNqx
	tBsVgl9iysgb/ts6ECTfp2fvHgv1FjtorliJ9LksbdnOicF0ywdBhgpGrxu5cPwEGg/
	ibZNa7l9PNmiD72CF0Z38Yz7k15ZG19nwvGgszHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211cfe071-44cbc3d9-338d-453d-9a31-c85891eb560a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54354e24b6789d056e22a9413e0ea381f7ab452c1dab1bec55221cabf50f9c7
Date: Mon, 18 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658156212
