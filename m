Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D847C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657096612;
	h=To:Subject:From:Message-Id:Date;
	bh=GcJlKnBZroAEL23uvz4ICKlUMSf5gsUgiZ0zxQRZVXw=;
	b=dXZ4yNEVXPTv6dYrcgJwJW6X5lIwH4wmPRlkK2EgPHau5V9HSPR1loFnmPsBOhTb
	7xrF73HUiFyCxqs6gXFZPR5DeUvZN9QnrEXIxceV+K6A7350un+3551zP2NqsyAoIBx
	77Kbjzr3hR8rh2UT5Nb6foobKjixXxek7YUAxCpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657096612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GcJlKnBZroAEL23uvz4ICKlUMSf5gsUgiZ0zxQRZVXw=;
	b=h5HTwcQdK1gmw6wEqzQ9MUOZrvV/IY8x9eT0U8LdLok/B5DvazMuK62jh4kp2OQD
	pQmN2jU03UAPl9AENYzNXon8cJ4eIf049uIZI3lDR9XjC0pgMtvKZwpDWGIxVr4CTxB
	sB+4NQ+JGL8ZHpubIGslYrkNarkzFYS0ZaazKXN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2a7a9b7-b71ae612-5c39-4908-bec5-8db7d7874bf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 733389f2d415fbf0cdfdb9dc9fe912ccca673ba9d1ca0e10faec3271e9754dac
Date: Wed, 6 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657096612
