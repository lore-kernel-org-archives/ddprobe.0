Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0307EA2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 00:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650329698;
	h=To:Subject:From:Message-Id:Date;
	bh=1uFwTyYKCp9QNTO+78672QuoeL1MZw7NCtk8NA6twX8=;
	b=ZRKpv5HGD0zsjXoQxbDBqB3SZxdYgwWtZCT198qy6a6Bh9u9EsBYug2Z+6b/P+RS
	aNza9V5WIY5SFv4hp3+isfY+Aiu0JMy7wmt809EadiWDVt1nt+BrByTdp239s8bBrOA
	b/J867z0F3jE2hXfu3qk4wx4oLZVxiF8r0QeB2/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650329698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1uFwTyYKCp9QNTO+78672QuoeL1MZw7NCtk8NA6twX8=;
	b=JDx6axo50OeoJ4mdY2hl27MWCwqoSk9vuuG5F/5tiVpH1cHM5ZrNAcYpVjQBXQhJ
	C7wjxlY58kTE8E1F4+1+KNqPEkMJJXCfaFgW/QVyEWcNqYPaI7DxblMD4d9UFErxbul
	L9bbbMdz2zwbNjHi2hIKjm7c00Sxm64HqQfHR+as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f50bff6-6c1d4fe4-090e-470d-a8c4-1d69e3380715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9878c9934b4e1ef6164287d52d2b63ed3a92c218fc3355bc5de51eac4446d379
Date: Tue, 19 Apr 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650329698
