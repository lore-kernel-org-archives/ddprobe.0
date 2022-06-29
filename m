Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95673FE6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656537413;
	h=To:Subject:From:Message-Id:Date;
	bh=m3OL9yx30tXDHuBd7ZVIFaigi3G07O5wLPBb3AOj/hU=;
	b=JmXPL25OdCFYqw0EmGD4ditYqerHLTiZWwm9eXyiVxyfpbQ+glz3hlw8G964IQKT
	24o80u2t7ZomdPNH4L35y7K3lf9Lcon9RxoODTCOzNyMOHOhtsDRsYn2xzK1ibAbEQA
	vSfvCs/pvsMHjznpDkUFaY0MwuKhEN5XW7igeR1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656537413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3OL9yx30tXDHuBd7ZVIFaigi3G07O5wLPBb3AOj/hU=;
	b=Q/vHCb5FSqhU0d2mzmP63sgnPvv4pK+Bpe9RHkl4KA+Xs8aHu3v4wjpuNPirhUGx
	e92O3eLijbFUyS5hA/U/H3INSLMFDg1Ho5Q9M5LzWigsIkBDV42UqOfoUybC54s30c/
	oUJOFKR0BvPyFQ6/F4mj1+99pm5MJqqzPeO220RE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b152f2b9-edff9251-2d56-4d2b-8211-4075ce3c5209-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86ed820b09d4c1443d59b2bc462ae755e7b456ed22cdf5ffe239724b76abf519
Date: Wed, 29 Jun 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656537412
