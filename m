Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93D8A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 01:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649552578;
	h=To:Subject:From:Message-Id:Date;
	bh=SfGElOxp0SDvK6XNUZXsgJ43Jnm0+0onGpi/CgbyUmo=;
	b=F+Ulc9dh4T2TyGYZ+p59wTleDKear/yRR0x51bcKdNR4/5W/yHaE7z5CYAY4psrP
	LZRi4AptwsiGK0kj/AxIKt9cIj7etJXivaOZDznx7YA6WiRj+NjIt7R1GdgWH2QWFb0
	fQ0SFwV7PMqlIh7MDHTiiXDMiomjy6iHpYokFdg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649552578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SfGElOxp0SDvK6XNUZXsgJ43Jnm0+0onGpi/CgbyUmo=;
	b=Y7qzPCxD/O4XdhkRQKafwQMQMmieNntxGXk5I+w5NBfyBl+aDontdgDRzjuVsZRa
	Vjvv7oWdFr0My2dheGW8FtraK4C06X37feWSaFWDMrfcARn034a9PezAnSSMz1sq0J3
	/jM8b9lFrdb/YpIKYwkRdpsxS16WjOg3T7AIf/y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010fed6c4-bdc19186-e8ed-404c-b1a9-6584f2995956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 807afca5303462d376038e46871409e3e5cfaa26dfa169555498171aa5cb798f
Date: Sun, 10 Apr 2022 01:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649552578
