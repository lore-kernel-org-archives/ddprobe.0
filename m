Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA30C290E
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647414684;
	h=To:Subject:From:Message-Id:Date;
	bh=5CD92Y6WxqJDxFsGdmYrxNjpIwPHlmO95ATEUo7k5pw=;
	b=Hr5PVy0GZKTd2sVWQQwax6WSh94E0KMeZ6f8fW40V3cuL/EfFNkzcFa3pkVmfpLJ
	U81CuLxdfm/Q3uBfALfovp7pzqdDSJLjcDm00UYfqxSw3LPZ5vJbLSK63b4bY7aaKDw
	06zHhjqZmHzL0dN2yHNuEonsbELMZ26qzVFsr0z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647414684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5CD92Y6WxqJDxFsGdmYrxNjpIwPHlmO95ATEUo7k5pw=;
	b=GzlDh9TKhhW4aoltg2cZIZy8AkHrk0+jawe7XOvH4lAoakw4o6FMFo59acQxS10G
	rfmOjCUzfsqu8VfMoJqd+Zzco7v5dji9BegHJXt0MVSVkOpHbsVOyrudL+AEwB38ngo
	rye0EzlOAtqaFL8pNZTY1vc+/KMRh5ENDXDnJUEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91912c46-e502b667-c45f-4fcc-9762-4fb8793200e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4edd833e490d09832d1bfd3a05e71e8ef1910e6280f9868099a5543a06e93124
Date: Wed, 16 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647414684
