Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60B8139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 21:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649627818;
	h=To:Subject:From:Message-Id:Date;
	bh=6h7oAfytbxkO1zHi+wTp0P5psuKKCm3ZpKM9PpX/C8s=;
	b=Uh6jC2oJos+z+5rRBLgtwyDf/TJz+ZZdxibNPvSVMspqc0tHktaFeLW66brUf1WU
	dFH7zdOK/8Zwa0BSAQl4y7kbm4ZPjWtkYU0Vyoig+dBmYahujM2A+b2OY1TGd5vXsph
	bQamv+qN081H3HJeuaVfTrlbx4DcCypWG6vsxPo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649627818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6h7oAfytbxkO1zHi+wTp0P5psuKKCm3ZpKM9PpX/C8s=;
	b=kZIpJJNOPfANBirijgxKcqxpbRyf8tRC6hhoACEprnWHCRNy1rKd2S0XwH1aA6qp
	/xEHsWcIpx9w8J77oTyD0EhurkLU6OLjTDsyJO5VKNBM30s7UXIFuHk36Q7uUDfTePg
	/4aVcx96VTS924xmtgKXX1t0SHgqAlEPLQGvkbzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180157ae91a-e29af4ba-03bf-4b01-9b88-6ea0432d0cc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 476b5e28057090be1a25dcd99eddc48873e9f7d1f746435c7e0c01da03f01e1d
Date: Sun, 10 Apr 2022 21:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649627818
