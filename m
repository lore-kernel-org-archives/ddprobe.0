Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30CE2F3E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660171853;
	h=To:Subject:From:Message-Id:Date;
	bh=Mq1v8O2epGlN+iaQZupIqptMIVKmPVLiypiO3Kro+AE=;
	b=NbwAN1JmfYrk941OMLhU5kKFEj7La7zDJavwmJBJG9O+3cjVX1l+HoOeU+BFnPVz
	+zpLC/kPyd6UnyzkDEqKXyEpzuTjJhy8Wnp17d4IRMsi3vH7/VKB0eWF4kBPdV7gg8Q
	ZUzDoC2kI2h9BMuSsBdUTDi7DQhW+8NMaZM5xJWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660171853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mq1v8O2epGlN+iaQZupIqptMIVKmPVLiypiO3Kro+AE=;
	b=VjIYDpOnrOAIVskiBrdvF0MChCgohlXh4zBbbymkyrnAyHwdUa2+XDML8lhr+GzE
	BGZtinPrULzM3AQrCgeWzUjUhREi96oP0WNaa1VwXT+djqB/xyt0dQBn51FnQUoNh8f
	iDHQ/tJ3qFnqveMT0QDZoCDSbLPhfWvbwoT0jxtU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289f41af4-ab7352cb-6ec6-4510-96a9-bfef84f5dfe9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88c9712fca533af0b488dab436c7c45f5e81a792c6734b4606f7b640923790c1
Date: Wed, 10 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660171852
