Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C39D1FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650532918;
	h=To:Subject:From:Message-Id:Date;
	bh=RigmvC+Nvcu3MbjYDZ6nGuDaH+wsGqftzq9VkEk8cKw=;
	b=PWEVs9GWmnacy70uAsR4O4HDb3pfDSfolsa9Hd5xHIk3lU+vZDvCasvkHDFYccXG
	+DEUpEVqh90kexn4YCJqzgBAocsdiG34BWaQmGacPUVr+Dtou2fbQ0Crsd3bPjcJxfL
	Osz1nGQHoYJetS26giB6UPp22PjGT/MtkfZ5ikf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650532918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RigmvC+Nvcu3MbjYDZ6nGuDaH+wsGqftzq9VkEk8cKw=;
	b=V1NUQw+JSJtHRiAx/XIrEiSgSF6NffV3q/ODZAWZ464cGM5EujiFM32Pw11as2N+
	THUrsQSJ7hGi0KPuumD3sD/wWueZJOqAvMXwu+BASpxYJ7Y/dZXqxD5NsRO2Noo9Fjr
	cFb9mEaQyvUXrY4r34+MeO/sMeRUogfhO/LDZjFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b6da410-bdcb3649-7a45-4e48-9e4a-d367d6957964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a0f29ae3490e2b3859b2790c37e2ec038077fcd1b79f73fac6235fb3cdc8c3f
Date: Thu, 21 Apr 2022 09:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650532918
