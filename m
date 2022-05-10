Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3138D2912
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 17:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652203019;
	h=To:Subject:From:Message-Id:Date;
	bh=Kw8rT60qCZJ1IicgKA/VackZMAcB8Ev89ERmT536bh0=;
	b=P24sCxLh7xjSlWYPevuU+CJ9jndxAR0lyF4hehe0bJeDAzJMWPhjcCE8u2Xpo3rG
	muhUdHoMVv7eR9Z/L+7+jSitThq45UvWZq91GxZi6Aoh1UeUfhfG+ERN3IVmiEoVrP5
	FokEDSK9jvPVkIh1jrJDqiM0b8yMfSNoLefek1Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652203019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kw8rT60qCZJ1IicgKA/VackZMAcB8Ev89ERmT536bh0=;
	b=SIhvqMkvzqTL9OqBJkrAV6NTXD+I8KpnQnynyPxeLp4G60215IwntrBrGgLK1VgJ
	gO3rhwq0hrR8DYHRBtN4yKZEi0VZHaX0NYGHLK7Ghd1HAZs7I2mir8xRFwkDopK+0nB
	gPuI6K9Zt5eNjVevH4Uoo/8nwkQ8B2f/aZVPtaC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aef95cb6-bcfc676c-94fd-401c-84be-ea85f58a0fb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10d56fd54bd80b88d9ea65a9d64528451e3a3ad3b7a9b5eedf5e5558de6c08cc
Date: Tue, 10 May 2022 17:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652203019
