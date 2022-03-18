Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC30510E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647627385;
	h=To:Subject:From:Message-Id:Date;
	bh=MdBHkJya6wvMVKJGAozOVrGS5LYFObNfFvpCR5hoDdk=;
	b=R2zbpnaaB1g9LA7xvdGNo0Zz0jRTWBANv5I4mqdE4p2kb7MCNqwKs1XTl+7EW6KO
	F9/svap7QdyezcYHQUBMeBD8L0uQ2amZnsUe3V+NJw938DKRdER7/1IsJup+RwzgDLT
	XHBaAda1f89s7rzYu2U5BvID1UBp1QfaatrfChwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647627385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MdBHkJya6wvMVKJGAozOVrGS5LYFObNfFvpCR5hoDdk=;
	b=TGzLJF/yLHeG8VrYoF3p704VJfwJeBQCqLR76gZOzxNoEPqek6sII52vt+0eUvZS
	jbjiHyRGuafEYg25HztgrLZNHUuwkSn8GD8C2B6+sw+z8hcKmqjjMI0XAo/0D+qCsm7
	7ivW51ML2uzJg69mRp+aaXg/KLAT23mZuA9h+O/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e3eb7f2-cc2dca2a-6ca8-4e48-8067-249c4d4f7249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd3ca9f4c5fa3961e972a7c59a39a80f197951f02bc2218d8306198f22cb9fd
Date: Fri, 18 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647627384
