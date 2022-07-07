Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160942563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657216612;
	h=To:Subject:From:Message-Id:Date;
	bh=0dWQm2W42Krob0ZPCidr/Wc1bGSiJ4SmBZF1HALlnQc=;
	b=U46hmAPZA3IgEdSBvh8D+5H5hNwO2IrYyGu0/AzNK2EuwR0EzGGNorwnGcoH97GX
	fuIM4POka+jnBIRkHIbV8sPy1J7Y9TOrbddTQ+pgYma1Z54VHO+MidDxpSvdGWmMshr
	prxUsaNvd+nBTS4SOVWAmhN+Et6GwildW08jhig0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657216612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dWQm2W42Krob0ZPCidr/Wc1bGSiJ4SmBZF1HALlnQc=;
	b=eaIbvhATvBIWDICaJl+hQ2dXrOSOO+u36jrStH8BDyR99lyYbHfd5f2O9xAKfbSl
	zoPpmMbGEKmiax1Cy/3FV/IWBr6efzQ3e645G3ldoibtl10DJ7CuKOuJKRgNZnzpjHM
	b/OiWJ2ctQ6Wu8H720jVtnT5eWBOMBPJXHJ60IsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9ceb78f-834220f2-4f0d-4a9b-94df-480fd25a30e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c826e4baa1823a431cbfa829055389c428b2ad96552098c4072ef7b87f6f162
Date: Thu, 7 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657216612
