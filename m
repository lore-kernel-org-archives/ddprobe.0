Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3122C7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649016358;
	h=To:Subject:From:Message-Id:Date;
	bh=bd0LWnHGqPRPzstgTiKL0FWjy1dVxsjpmCLlS/yECP8=;
	b=KnV0+hH7bA6shTW+L3Vmo5DrBX5PoSBWZPCYG446XjjfoMrInxk4OFZbzMy2qpMU
	l5Y/L+SH0hW+Sm08mz++InyUYK1bpp6kRIbKR5BlAS42IsmeSiJTm+0IDYg1cjxY7jT
	k7eDnIZzdR54BpcakShKue63zeYnlcxuW7yVHRAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649016358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bd0LWnHGqPRPzstgTiKL0FWjy1dVxsjpmCLlS/yECP8=;
	b=CTMh3BeKQTNFgc4cPjxGMUe44Qih7D1Gjarhe99JWtcAa5UQv7YLW79QQFdLF0HT
	u1mNydyMBOHZP1FLAJEr2guia2QEKIXLEwSOQMW61ld7Cz2ltPJSxvzqZwUrkGndFiV
	eoXjascb7b6pDQu/qUA4xoLVrHtERMxLesTSc4dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff108c5a8-f386fccf-1f0f-4491-bc0f-9a3516fda41e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52861b029437775648af293902eb8103096303599d76a936912222d478924e9
Date: Sun, 3 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649016358
