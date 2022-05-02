Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6192908
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651505938;
	h=To:Subject:From:Message-Id:Date;
	bh=Vqw1aL0sKRnyYZ8QDOs4ocEVeZOkg/Ryps7wrqxuj6U=;
	b=g8/AW8gBSv4G91Ztb1IGXmMc9X5CTjX2qEc4OyDhnwCwHjWCc17lo6KEv5k752wy
	j7ke6GjxbZr/rhr8K/O6xeOwvUNIP5pxuAfIuveYC50JCeaVgy0jwksmrfObKeaQspc
	a6KnwShS2mEmcRXuQ3YlE4G09Q5ZGNhBzV/Yhxcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651505938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vqw1aL0sKRnyYZ8QDOs4ocEVeZOkg/Ryps7wrqxuj6U=;
	b=XrnUTkPQApVl2Qa06zSXcJaVEQiNrvv6fjtopb7JyKL/Q1fcTYPu5JDuq0Qo8vH8
	9sGM8eTC+2D5hfI8pvx02CqrbxRKjSg6dks6j2at1JIfCtC2v4gswbIvVV9NjfVnQxN
	qIsCLZ2l7+R+joKz9CcxJEJmB+cFTXrwXPWAkVBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180856cbf5f-550a8495-8b7a-4560-a3ff-2dfcf961cdd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9c617939f00bc907db1e4666bf3079af2ebfe60648d0f00f57378436f631aab
Date: Mon, 2 May 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651505938
