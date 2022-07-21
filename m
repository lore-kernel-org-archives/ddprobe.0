Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4228EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658399212;
	h=To:Subject:From:Message-Id:Date;
	bh=jSEqXQHgAOHkWuQ1CL7FeeJ8FiTDtMwjQ4W3TAXgLGA=;
	b=HqAn3PSjf38884TTbu1wrc0dJ9oKgHnoOslwPeXApS0xt8+rep/c8jQ8Cdrak1lj
	2VWc3Ads+PFupIPa24wxjORCzD3zw7SYauEGRM20Zgn1Hr8hxz2zmn+KsPxGmcKpD9/
	KaQzCxiVXlb60HVWzPixV8nANrMfOR4iBoAhQLWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658399212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSEqXQHgAOHkWuQ1CL7FeeJ8FiTDtMwjQ4W3TAXgLGA=;
	b=SIOtPaxBMdVh5Na8Qepe1hcrYIY22O4uujQCaUA74foFU/GyMgG+ilaRqnVuVtpZ
	0Pi0IIzXjK5rhRUE9s0RAebx6X+CNN23w8nmd4/RQnI2p6560/u9b+X+XJOWkocmgJW
	1/qqWQQ2hxTPfkuki5bXnPvD1OLeSN9DK2VPgXiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182204bc2f6-c0a8545a-4a0f-4d08-8af0-3c012e3ef59f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25fd68177919ea8d64693080d434917ea0bfe77095875c9f3af81a5b109928f9
Date: Thu, 21 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658399212
