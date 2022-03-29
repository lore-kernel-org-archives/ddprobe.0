Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F1F258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648585618;
	h=To:Subject:From:Message-Id:Date;
	bh=cAQe5R2+rbjVUC/Xg69CigJotjXb8gZSXCmGXuxjqWc=;
	b=ZaH4E6dfC/e+o3LXNGwff7Zrhw2mtJCKUhIe3QrgbmDfIJADqAR90qcvdFb86wqp
	/NO622Fo21KB/rmPtWTJU2tu7yc/8vHoW49ziA+eDVcJDASWVb9dccqhhkwEhSyX1/4
	jIw5PP557GHyEWzzUVUkCho9r7JTSOhaW47305HI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648585618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAQe5R2+rbjVUC/Xg69CigJotjXb8gZSXCmGXuxjqWc=;
	b=V6JWUhcRMe981+2Db2nQ7c4NGTVn3t3DjIxYx08/I42SehcAQ+M9Ilt+p8s8eTRT
	nEgP0fx9KBa9718XGeDapVM/vKQxSOFHzveTXdcvolXN31ZcEBMfRLFcyfsG8jhiS7N
	EUorK7LN7DMJe7eI93drAI11/Rw2O/M9fFyW+y4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd75c3381-fcff0218-a026-484c-b124-ddfa9104001d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5281c75cb2f4ac88c9daa065a1f2b24b80cbca4c70c8302be8235741149bfd74
Date: Tue, 29 Mar 2022 20:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648585618
