Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0F7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 05:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650691018;
	h=To:Subject:From:Message-Id:Date;
	bh=RvkKkMUxloqEeIgrBzQbP9sdPozGa6NjnKQEMhnsC5w=;
	b=PcmlUE+00eJfZbIFxPL3NksxPiz+IE/dfzr3MdbH/86VuIBDD2F2ATu46NmlXVqG
	64lAsl8gLjmjFAM7ccFLAkCiVVQ9K/zXlRNH/a9MezVX2ZOY7GrWz8xDnO/Rt4taQ/H
	YKPYzp4LTUiOwDexiYWcTEF+f5gQ1XatZiKwAhJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650691018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RvkKkMUxloqEeIgrBzQbP9sdPozGa6NjnKQEMhnsC5w=;
	b=faNzCJCFkTYA1lB9kjFeTdx2FuWLv7OuStrxbfwb6r36SyqLNDRLO3Hq7dcXYGsX
	k41FuFyvSXk1s/sb2cxiU81uhcfhzJ0pi375f4eadDwV7SR9N+qRTccvbhdyRmOpQJb
	PngqmlJ1k3yqfsq98wts8BdOe6d6eiW7nxy8w3q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054da0e14-e37e510c-2f71-4cf7-b255-2e1617327cfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e711d6161d740c979682060620200f856811ab7c685bf59512e963a6d37f7952
Date: Sat, 23 Apr 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650691018
