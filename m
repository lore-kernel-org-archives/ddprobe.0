Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676B12100
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 08:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649321038;
	h=To:Subject:From:Message-Id:Date;
	bh=ETb9pO4Z8ZQ6/5oHVeadYBnkvdFwLrubYmSsZjjQgIo=;
	b=h5nsSDqx6RbggVHoHyeshC6HZBsz0aC6OnNAO+UJBUuLvBTdRxUf/DCFLsZfhWNo
	KH9uelw9yhR7dNvrp3g2Dgu4F42pDjkLMcS4aPvMz2UWwF1DAjDg23mKL0klsXOk4O8
	D1PLyi/FxnniJ1ohsZ0KkMiFO6YvkH9zfWYprzMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649321038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ETb9pO4Z8ZQ6/5oHVeadYBnkvdFwLrubYmSsZjjQgIo=;
	b=UPyZF1PHTP+4TZQpyCetiNr1hlQZXjDrA4mmS4G5FxgVOyV5CtjIL1UlBbF+U/A+
	SZOyq53uzUhvY/JSCrLdzkZfiMRFBGO4Bp4gUvT6pDM8W+Oe6s7G5f6dZwXCVFn8Frm
	U6WwzIJnYGsYXBsY9ry9q62bjPhIKeT3zDHDrvho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800331d1cd-dd857a30-2587-4a1b-9dd6-666fde0a42c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9404d62f1759ba5da561c12284ebb71c101946f532b63eb83317ac3788020c40
Date: Thu, 7 Apr 2022 08:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649321038
