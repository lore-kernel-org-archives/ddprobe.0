Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC2F33F4
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 17:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652462699;
	h=To:Subject:From:Message-Id:Date;
	bh=mP/ecRq49nf1vx4Dtin2QIkNGpDwI0JyLnxSubcYWAE=;
	b=kSsusGgkOyOHUFJ3qeB5w9me7pjrFwTx9k7ZdF+LmBhzJrqYOZPoVEtVSG++HymO
	1PTWQxsbUTZZmcNcSqNIrye+T7O+/9/yg0f3jQHNBpUmoJ6yoqmfnzG3fVrXm2giOdR
	60UZcRoEwxqFx+iaheZdOmc+/sFz1IPKSzMrI5T8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652462699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mP/ecRq49nf1vx4Dtin2QIkNGpDwI0JyLnxSubcYWAE=;
	b=h+0gBHqEm8OJtZXRCNkvaqbTth4fO+upyYffA6QhdLWqXoSqN7/cFT0+Lcq8WHuc
	TbL4uMkMgXmlnKlfQC7GXHmxNSZA72pn4jq7/M79L5JaecWWTtGDYLOGJI6/So1yhnD
	IJjbPx/uEl0u+MJaiQVzTIfsQL32dIjH6zxsFHOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be73c300-ff787f00-27d1-4096-b21b-788ab8e7cbe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c896a656317295e5be76fe661b427a7a521d925b50c95565ac5fc75bf26f4bd
Date: Fri, 13 May 2022 17:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652462699
