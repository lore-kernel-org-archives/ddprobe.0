Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153777B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 23:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654731299;
	h=To:Subject:From:Message-Id:Date;
	bh=zBODFjK/3h3qVz1CV38XZ/Wxtg6ZLGdSKmxv+i+Csds=;
	b=KGQOtsEBGLMettmUmmeAzZZb4275Dm7QE6gcsfO/NISrej7uP8QaX1hcrMD/bQfn
	h4gPwuLo1RGKGFuYr+EzDCZQ07J2X3fD6KdK5mdRlhLROYnxdlxQ1lTFewEvzokoKTf
	GnswrBS8wi1VB9jpT2LanFQeEwl54EHtltlOLIHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654731299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zBODFjK/3h3qVz1CV38XZ/Wxtg6ZLGdSKmxv+i+Csds=;
	b=Ry/GE9gyIdYmP+HVN6id3un+c4v+rvKD/LZerUQCgBSxikLGOrnBtVfAnbG40BXe
	P61bjoIbMH9Z2hktVw1SOBd8QlWLhI2u58IfgrrWY89YhhcUVgiT5sPiHash0rU+POZ
	0t7Oa8ymgF4YQMBNxZ/BKBFwFbl14av0NSgPlPNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145abd9f1-c341e7cc-801c-471a-a601-77cbcb0aea1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cacefc8d44981219bd0ca55089660b08edaecdf2433445dc0229a0b19a9923b
Date: Wed, 8 Jun 2022 23:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654731299
