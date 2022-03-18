Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A80C4C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647624684;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ib3A7+Uxxva4V/oz4Cx6ruql+DRo4l47ZrkwnXpFxE=;
	b=Hx53Yn9VIgn2CMMkAWWEvm1yrZ8MCDJzrmrXBkIU4+uAFWwzxrKJkhZ5y2bpTyR9
	YQSD6M7kRlEYn1+Eh8Wh+zcxPGchOikO9p2KAriuLIlV4izEYy9lpKw+Sbs+ztT8TnN
	upu5pz63dmkOMf5WIhmzY3EYqlXy3RUNHnRNC80w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647624684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ib3A7+Uxxva4V/oz4Cx6ruql+DRo4l47ZrkwnXpFxE=;
	b=IqUIrxJZW3K5dKFujmvuO5kj2qS4K8g74cwYOe4lY5Q5xjLuigUo02emkPXCo4fN
	ik27mCljdKPDBPfE2yCAQggZDe+e36UakN9qVycP7C45sJhlqTEfkFYeGg7KtZ47pKB
	zv2/+srkjFGvSay3+/XBGbn0CObQpj50UGVKr0Ck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e1584a9-18cc07a9-c46e-4211-9883-370e02c1fdc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55546ac54709a5ca7c1f3bb3917fdbaf57909dd20d052a3ffe5dbab9c6514c6c
Date: Fri, 18 Mar 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647624684
