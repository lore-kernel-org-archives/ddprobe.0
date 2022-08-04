Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9098136B
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659587452;
	h=To:Subject:From:Message-Id:Date;
	bh=hsnwdbizFwbRpc0WWUZztnUevXOFoTB3gdesjR/0KKE=;
	b=beVNjIbUelBfFq+e6oTxL/6C1gDm1MNBQXtfN9VC/5JJ7ZNIbcrGjQ9NxJfkFNdU
	/fN9ltvcHPf7LnB1a+3+JIeagOlfm0GmrXYkggs0xOYYvCJObQ0g+T1XthRoAhff7sm
	qt98CFtAemsySoNozVNAbI3pH8cuFq3PrJLDjuug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659587452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hsnwdbizFwbRpc0WWUZztnUevXOFoTB3gdesjR/0KKE=;
	b=eZw97bDLHiKJJSE7LeFCjZBEf93q3sECnylUnDhahPWO15myD0nCMzS3zUVB+0e4
	90qY7S7LV0LvsgaYu8Lv6qzlLsrYeTy4QwF7rCIqkSQcIoGBePImBKeRfSiTKu03vbN
	aPDioqZC0egyBrzsVEnfsciLZ1JhFVm0BNrXkAX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182671ede99-291b71ea-e94e-4a65-99e6-b02251eebf27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87cf9692671ee3d5ee798c1336b7c82fd11a9117ff6c2356d90ad9e83a87d202
Date: Thu, 4 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659587452
