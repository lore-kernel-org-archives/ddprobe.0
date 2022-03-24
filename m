Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDBA1FC0
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 13:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648129738;
	h=To:Subject:From:Message-Id:Date;
	bh=HyDx4zGBuBZGs3L4nnjlbt8rKNdviQtGnoiwxQ3i2Y0=;
	b=KoCLiL9XsU5vZ84uLjdcbOJ+51hB0YlPj3O+hZ8YPbHpvcgzpdv+jEL6qIq3np2K
	KQt1V4LaXDTNhw4nbo349hBqsLLrRVmYFSCfRqFyxVTOAtv0CEGzfDJ8+mZFnF1CLTj
	MaVTYlu4Ta3U26070v1jKP3rQwq6i9bHR2lODQg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648129738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HyDx4zGBuBZGs3L4nnjlbt8rKNdviQtGnoiwxQ3i2Y0=;
	b=XcXTj1TK01O8GVNOhi/VV+SkOBjlmRZiSChfLgcxcVbrJDGPTN/uvzrisU9JyeSt
	DfxhzP3qrV9Ii0gMJocXiW/OK3UYHug/zTA2Xv5j3Kopa8upByMHi9FbjaRL7RxhBcG
	Czdtvn46iT4lSKcKR86NFBR/F7V1gKa0+9zZvMRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbc30063a-efd1caa7-4939-450a-a05a-0c40db04ff9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d88d17a8a520a1953762bce8ee9f67bb302075c44c70ba95c07739e97b58a0c9
Date: Thu, 24 Mar 2022 13:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648129738
