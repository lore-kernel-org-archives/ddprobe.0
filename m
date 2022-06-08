Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55B7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 03:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654657379;
	h=To:Subject:From:Message-Id:Date;
	bh=Gs1M/MLhATagLAbWH5ntd8GHry1x9+EbWB+zsC9QJZU=;
	b=FI2Lwz90FemsiGxwUPEsAcIRxegjQNsmSAtr6s52gS/pSCk9GbbFEdORXUYhFEhv
	NwOzv089dxC49/hF+K2xIaNzRUEcqk05RS+7RUazshWeTuMijmAo+jqphIIL/zmiFY9
	xWelJB0wopSgLJAC4w5Gq1cRFPV0CqerjU7FoU+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654657379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gs1M/MLhATagLAbWH5ntd8GHry1x9+EbWB+zsC9QJZU=;
	b=Qf0bnOP46LuPxv8xHeVkAGONWHgFMuyqZwVCqqa6GnZvzIE6cpg1OUKm/McQ2t2H
	LI8ISUkgRIgkKq0Kmh2qn4fLF8xk+7TXJkcFv7dzdD4bBB9U9NJmPG7FfTrzTRoRxrB
	suPDCbK+nR1Y3Gm3bQe8wz+/pI6zrlntuPtbA3UA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814143ec06-c5b35cae-f7f3-43a1-9271-9cdabe0d3637-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fa182d358b1be19c5a4d39abfff03d46b6506e1e155f1073a0942d137394448
Date: Wed, 8 Jun 2022 03:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654657379
