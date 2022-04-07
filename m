Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4A429A1
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 21:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649366218;
	h=To:Subject:From:Message-Id:Date;
	bh=x1F8FkULk4W5aUgo1ICWU6kbNq4J4VUfM+5iUse+YIg=;
	b=BvrqAiSlIJx+T0nUnEcJjVujSJYKZJx9ka419d3t5fXJcwDBgb4K06R5H5b2kB58
	sQNTXxKN6fV74f2sfwVCTfuKGm6LbU9DBiCU4xv/obDXkZVG/YIvP+GWP2bbP4gRgOY
	aZBecq9a/UKpeDrs9MOcd4y4DtvG4qSKgM3jXPZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649366218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1F8FkULk4W5aUgo1ICWU6kbNq4J4VUfM+5iUse+YIg=;
	b=E0NaEBm0+ctjYT0EDRXmFXgJ46nrgD2PwOID9t8AIF+PlXvjN3TE2HoIbODrfspO
	HbuCYfS8WZ1fhnaUi7qEvtL9WKEwvOi93ah3qJtK/mmNRMzhLPYj9I0EZZyy/GMZdHH
	perkxHUs2aWueKCfKFu6i6YwlqnqcSPGsyRH4lCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005e33641-1cbd91bf-fa36-4325-a9b2-41d5196387cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ad01ed400458e733d60534dcfb1d6cee4339278d1a6a96be93249bd30f08410
Date: Thu, 7 Apr 2022 21:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649366218
