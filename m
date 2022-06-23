Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D247523A8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656017813;
	h=To:Subject:From:Message-Id:Date;
	bh=3ruCwscNn1D9R2/yCaDCQMOTaPx3Ajl8b0i8VpMajSM=;
	b=eqPZYmutCvf7c7lFTBjzO6ZXcyTVvqRhBXXoAhYBPu9q195b9Nlrp8r+ZD84PkqL
	XQtExrpL6AzXMMk9QkrbZB+cVDejkKGMbL9uJjH/tCFQB+K04/vvtAAWXgUxZXKyOv0
	CMguLv4x0c02XMAzE/ex4sNt3iHnnz6S8BsRsnKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656017813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ruCwscNn1D9R2/yCaDCQMOTaPx3Ajl8b0i8VpMajSM=;
	b=TNpSSX/ZSUOtaEfEAn+CJcAqwPQQz4ilsscrLvag3qFGBkNgrJLSM+OET/Kw8Dtp
	zniDU/t4VlSIXHw6Dgqvq+tb6wDvvk/8r9RuIEvpNfSMP/X1yc+qwpCShc3Jzxmv3Uz
	N6XkUZ5zqSt6INCM8P5jn8VIs0MfGov+Nn3QUolE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181925a7b3f-90187ebd-c63a-4f6c-b28e-9cb6e5a3b912-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa3bdcdb7226dc9ba929ad9fb51c2d6f61121ade15b20a248bbe992ec9db324
Date: Thu, 23 Jun 2022 20:56:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656017812
