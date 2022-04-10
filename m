Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BB81389
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 18:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649617198;
	h=To:Subject:From:Message-Id:Date;
	bh=V5qrlXUv8kdV/aoMDzP9M+GXpSQ9CKK/AJ4VIKzS2UY=;
	b=X7lYgXdppFDnVuEi8/m+I4xTVQt9gIkBA5rWNnm5O18ASCxO3BdwyKb9pcZouYgZ
	JXuHnU4chWHVAwVrZhvWRAPDGxBsmPlQg4UWaaTI3PlEkr4S6wAlKABrC9oPHrcb0pc
	s9gAkRhFqWa7Dcswhou9vt8iTdsA3qytfiYXCmrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649617198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V5qrlXUv8kdV/aoMDzP9M+GXpSQ9CKK/AJ4VIKzS2UY=;
	b=OqaQCaDjQWLdpqFJTbNsfkWzQCRobtpj43j4xHKyhyP9bIz6J8ggt8TvGY9Jlt2J
	xqwTcbGfv0XhKy1w3ma+mCvOOm+HVvfwSCMORKJdIb5xxSxQDMo+qNX5MDUC1N5O5Tt
	o2y4kaftprZZOgLUy9HoRAoAP5CHXtWebG5SKkcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018014d8dceb-abc29091-94b9-4010-88b9-59c63ab53a75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aebf81588c77cd9c141fb6e99c2c69484bd3babbdec02c8e5a92fced82f26ff8
Date: Sun, 10 Apr 2022 18:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649617198
