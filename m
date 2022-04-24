Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0082717D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650803578;
	h=To:Subject:From:Message-Id:Date;
	bh=ov0ZB/Em+hes0nicEg723R9NU+6U1HzRYW6IJYbP29I=;
	b=ibddziZEW/AZ9Mp9mkbksXDuq7SmlTcabgeSm9R8lThFzmneDBrPC9sf/leFTkJw
	rzwA0jyDBSBv4HKGMbi3asq8YWEKSGzzDmq3rhHzo7UdZGWZNsDfh7KCnHNiIIoNm3F
	ad0py/5BeAYavO/fxDba3aORSObj0L8tuF5FwS5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650803578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ov0ZB/Em+hes0nicEg723R9NU+6U1HzRYW6IJYbP29I=;
	b=isAYi0rU40Zgm25be8PTvh8rey+DVeY8vf9i/Eu5HxgC2wo0QnNRwkQuelMuH45c
	U8rLZrpH6pEqybNJua3h0GMCHWQbYrGnk6ywvbW5yZy3OiXh1BGSX1AQ/ulD0DyGFdO
	1UUjIeLSyuJl4Y+H5OwTBEoqSCAPKdhKFel1+IOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b8f95dd-f7edbfe4-b4d5-4d5e-9720-b57d8a8f1e5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7303ac0d0c428a05d3cff328d334ec9656a63d57d4d3dd5d40be8a39037a2f48
Date: Sun, 24 Apr 2022 12:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650803578
