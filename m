Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE50A33D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650924478;
	h=To:Subject:From:Message-Id:Date;
	bh=EsRkfubDGJ3Ln8tPxd/oUJq0isG0xnit/e0EnPuvRzc=;
	b=bPcRW9aBF98CUI2KCb4wyBrLKplRieNYPiOymZihkILKSCNHGJNFDSr+tdpqCfzX
	QaAsALxvSKTolDEkewwZupTuKM9voyXUxAIuPQer6jO0d4quVARlfggPi4JU9+C20Y8
	dPRwZKucRpd8Mo79SqlddcPr0wE0oeMefOeFnFeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650924478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EsRkfubDGJ3Ln8tPxd/oUJq0isG0xnit/e0EnPuvRzc=;
	b=eMyn52ImorAmrzuqqy63j5OZENfqaZE3LWZ2pIvLWxTc4cUBxC6mrBp+QhHmaaBi
	4lUyan2ufGvi6b1KlPfX+m9ckAkMHIaWP/K9j2Ljf4Wb9crzl882FuzP0Dh3ppr0KtK
	EhLHMFRP2kz0ivlAxkyTI7/Yec1QoXp/7+QtQjoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062c45f5e-4a6d2f4c-92fe-4e66-9771-011402b51be0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8836a76925bcf53fcb72dfddff3a5b547ad46ff4c415d94ed092af0d81926665
Date: Mon, 25 Apr 2022 22:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650924478
