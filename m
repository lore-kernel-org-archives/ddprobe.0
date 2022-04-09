Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD607E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 05:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649480758;
	h=To:Subject:From:Message-Id:Date;
	bh=OsKqKkIU0ckIEllJb+Q6ky4AaRIDyqT94pr0Phs2Jfg=;
	b=hiW9uQDtEgoJ/+P9IQZfk9tbd0d9ALGRN2vdc3+18IPTOi1YTXatU1/tL/FbkC2K
	k+OEr3wgmCcg08fGX+YlBqOPx2IE1mekSK7zoqsFqqjaaX4SJzbMC3dBtejmpTiKxDC
	bkL/HaiFjfu1Tq1Lgy4zFSW/EJJhADL9TYXEB6bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649480758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OsKqKkIU0ckIEllJb+Q6ky4AaRIDyqT94pr0Phs2Jfg=;
	b=LmS3CQjOk9F1uxJNogX3wz6NcSegWjfNmh5U6ZI2lP8oCfg95kHP9GScT57cW1Dc
	0Mc5DD073bZVrMshM3YMsUcQqUYFZPo8XQnyTuwXJ4rDdJgZCR1wvvIYuNe8hvFQ82t
	TALvbQejfSjZUfTrnEQpssyG2hvkraaSYhnj2gzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cb6f41f-70341b79-7c0d-4644-9ea9-dd88c770fdfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ef656c898d8611a712fa5223cee2dd32bc39fb5e0c6039d4dfa59b1bca84f19
Date: Sat, 9 Apr 2022 05:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649480758
