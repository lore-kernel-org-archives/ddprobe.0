Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1951623C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656890812;
	h=To:Subject:From:Message-Id:Date;
	bh=iwQ7YzivbkdwSRLCQsuo0myn7cdmcPH2P/CZDEBZ8Y4=;
	b=TBAmapl1ACv01MQBsSy0Wv0XXLVerOb+xTpRFI0BT/7bh3mDx5P6FNkm8XQx/wAv
	+gXzv0L996+6dCMXobgCtQDssvkXCqvEgO5n7XIT3c+jGiFDONo4fWQi2mzj1e8w8Oo
	UZBOARR2ByXoSorJOaTOVaXed2pY/RscAuQxxCAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656890812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iwQ7YzivbkdwSRLCQsuo0myn7cdmcPH2P/CZDEBZ8Y4=;
	b=BQA/2QPnldfdNfL/JWaZcHmsvVqHZr2fcvevdDMvRWe2tGt6/GsibjSEerExjP86
	9L0QvEh54xZhzf427dpZS9Ju7x3bJ/VWIptHr5KyeUVm9Itdbnb9QudshpOsZsx/Nuc
	idk8xtmQRfB5uMfoPQsSOsheEG2BklmphNjb7GDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c66367b7-2f4767c9-b6b7-4f30-ad53-15d884d2f8bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00eb3e1a43149643edb2feb4bf1135be86f6dd5270e1334d3e14f19a21429d36
Date: Sun, 3 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656890812
