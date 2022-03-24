Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289BC7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648100938;
	h=To:Subject:From:Message-Id:Date;
	bh=fBrgALGfbpXapsDKeHUQ4J/+shr/Ic5P1gspNkNzjEg=;
	b=LZwZ3pyYJ2yHnfeffZVkIkQdGB/lnlKrrraM2az/YrzX0FzoyDFdhyo+7fTiZZ3r
	1Ibz2DuLBzwX3XlKiXvpvIy1AuOuIH2pdtUMyJ2HKL0AjIYCMqmM9eyj6MVlG/XShiG
	s/WmybaAbxE/6I3hdYH0b0tDo6szg5Y00MQkML4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648100938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBrgALGfbpXapsDKeHUQ4J/+shr/Ic5P1gspNkNzjEg=;
	b=c3q0m6OmzA915oQ4W+DjGm0rA+wPuLhVzmdoP20NvY4LUDUA+ePFB/Hq7JxRqFBO
	rysUO5FWfNMe2Mh67bm4dlWYBiwfXii2gjHboRAUZU8ruqqjFvDyaNv6PYoAIIRzjzV
	aJVjT/BtoUXjO+xYoBnUa5r9gC8jY0V+KphzVjls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba7891f4-a8a25a44-e401-4c16-89cc-95488bdf6326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b08e2c339e6dbe8a7e9aff2ca77013780ae21cdfbaf983e1d5159a1c008d8427
Date: Thu, 24 Mar 2022 05:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648100938
