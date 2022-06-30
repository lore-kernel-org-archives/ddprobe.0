Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38317469
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656613612;
	h=To:Subject:From:Message-Id:Date;
	bh=9k70RpsVGQr6vrthSJD1QFtCf9B4dK3VriKAFiv8a+c=;
	b=exbXyaV7EvthJyCORndmIKUJKF0nu9uYyXWOAgC3moqSy6OrNtvqbqKjG7cb3pTy
	VUhwaOztp/7x+Z8ZtF/HeftSM6su8War+pUOWcdYzpmge0CgDEF2h1WXcPplZiXp8Tz
	pj+8rr1HQijTP3Xk/FT18m5gtolsfdPhVjqg8jAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656613612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9k70RpsVGQr6vrthSJD1QFtCf9B4dK3VriKAFiv8a+c=;
	b=GzFP9idsqgZX7WpQEFpI9/A24kyx37ThNrl7e5wqtjmKgpizpD5NJAgezB+dVGDl
	ztKuw8Zu7PFLcX4l9OwJJeF4bQ7ECQVbP1hfvv2gU1iCrRNM9QFbD489ANx+DI1iAQj
	HfK7MOcjCoGEPour7z89YrIwOJ/Syv+yV3zA34Qc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5ddab1c-845bcf4b-9616-40df-ba2c-762d40190f97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07dac350948061b0517e6d4015e90a6bf872ce460d1a553d2d17554943b0c2f5
Date: Thu, 30 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656613612
