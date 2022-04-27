Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228207E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 03:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651029598;
	h=To:Subject:From:Message-Id:Date;
	bh=BfKnPhczmLJdLj2bADe16NCzEml2JqPVvnBhYMw65uU=;
	b=c9j0/MR9k3iu/t7pI7eXg5KlL80IU6ukrBqEtMkYWFgwXuOcw80EO4N7HZiFzF52
	C+SveDHK2us8SkxU+2jxnnMwrnAGuJNKrzUodYmBq8T4Ge1aFHlsN9FrlO/4EXMEZil
	Yeop88J5q2J5Dvmr4RjagytZGD82+DaYULFC8D6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651029598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfKnPhczmLJdLj2bADe16NCzEml2JqPVvnBhYMw65uU=;
	b=hfbMkJs/fGUJf723dR9SYrclUcj45nO9fE7tLe7XaaTEfRggMuEmUKtrGwIMVh++
	tVp+5dRUR7ep6AVCTieAqAM/NjzpfWm3u+1AVgsFcjly5vQ+TYr0gwP86TuUB500adr
	tYlt1AtotA6v10wAgYr6azvgMyFLYLLcF5tNxa8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806908606c-4e04d396-ad39-4146-9dd1-c9b2433b28a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 471637278717f62a59668b0f4423240847fade7d0853b5c6b622414fb76c8bac
Date: Wed, 27 Apr 2022 03:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651029598
