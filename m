Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E1923C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 06:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652165399;
	h=To:Subject:From:Message-Id:Date;
	bh=/9Rz5620PkyJ32AqZd12TsFMukIjUAxu2MKFzHCaV/s=;
	b=mhDoK2qyGxSTA4pSyebHAwAIBVbDZ4j3CtF3mbL5FT3RJGvjnhUJBkfq+3BfL3DO
	oELV+AdL5JPlYhUn8GSp2hkl70SWs76PEQ7E+BkSEJ7twZP5Moa0YA7MQeX8X2BLyJK
	oE3A5j/h9qV+JkHNuEOSxgN8SUMgVGaeEStT4yhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652165399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/9Rz5620PkyJ32AqZd12TsFMukIjUAxu2MKFzHCaV/s=;
	b=IzdlBpaIfNC3uEsewhkf1CttUadcS8Db/c6DVF4S63IuuAu/V/KDCpKHkb006IU2
	z8Qur0c3Fg29FSgzdl0Qk0KJE73XWjWSm7LAVFAe4Lu2XbOAj9m+FhluB31lc68hmRz
	+gJ7Zd5CJkBTeNcpoD7XfY9kJc/hasJ6pgNxJ09o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180acbb5307-ba6f7abe-ffc4-4cd4-bed5-0bd6cd8fd40a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e5941eca8a406120274c79baa3710f9dd57f9a9cd138f13c84f75f60cdd3c9c
Date: Tue, 10 May 2022 06:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652165399
