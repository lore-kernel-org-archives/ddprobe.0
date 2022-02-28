Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740ED15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646074885;
	h=To:Subject:From:Message-Id:Date;
	bh=qQPCw6+L9STlnJ/ZPXwCRdJ88+fJsnEJZLE3MTvX5Vc=;
	b=MXYdRh5rS+3rVige/uJmjmpSpR72ecZPJq1fLnbeG1blJ7X4hT5O3RaGOl9H50e1
	AfQcIc28nVDx//CN1/fSCpHp3uhqOYrJqx6APdCqGRwNCr0Tk6y0DHnQ7b+F3s6toFr
	9DxmzUIVUWWJBmsL43VuYcf1tRF/BJLOIkX4UXyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646074885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQPCw6+L9STlnJ/ZPXwCRdJ88+fJsnEJZLE3MTvX5Vc=;
	b=jE70v5VavUB+u1j3L1+RRKas9y2XCzQ5WH71rYgJqLwDf7T2cxpli2t1tgAVP4N0
	oHHmhlF2IOYfOiBIuKE+q4mjN4kcnNyrcvC35/Ot3TbmsrcJAvDxqpO+t0lxrvJGgqB
	19a75M5zVUgm0YP0irZU3a6E7QEb5Mj1GdxFAdwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41b57269-eff5b5d9-cc68-4fa1-9b4c-ea313a9e1017-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e95fcf04acb2720ad8b7589e914c8faba22649c2358d7ab64b0a73058db6459
Date: Mon, 28 Feb 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646074884
