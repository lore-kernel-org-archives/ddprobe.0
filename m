Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EEE7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660720252;
	h=To:Subject:From:Message-Id:Date;
	bh=GTctth/oMH0CwCFsN0sn+IrvIyxqLWXkT45OULhXz4g=;
	b=D+1L/uJQuc7BYipSsSj+JfILtqzFGcZY/1vjOmTxxAoK8PAJLDKAUCs5wKpjHNfp
	ERf1mRJitC+3Qvt4nOwH6VR3mcO9CcQ5sKGjAP+JoDkpaXImLA+K2qsQCB+JLcyxVLZ
	nlmUWJZRZS/TU4/TqYyiBn4woChYW9fKgDm+dM08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660720252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTctth/oMH0CwCFsN0sn+IrvIyxqLWXkT45OULhXz4g=;
	b=FuH5fxbRlusGP3SwcIxl4uBeJavExiENOzj81FCzP8REw0dnAZ1q3CDOT58bwW99
	Klgw7E0h2QBezAmaRmDLt0kURrDnL7dpovyGNAnp4YGljZpXZ4AFVBwXcN3vBajjnG5
	LTbg9O21j51aaPoy9dwGgrJTVugHXhu2tNNnzc9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aaa406b4-a01dbc4b-e560-4b98-85fe-0c495f34b954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e5cee58040f95c3706e1c4ecf31b7619aa7c3500060a166b4bb5084a2771231
Date: Wed, 17 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660720252
