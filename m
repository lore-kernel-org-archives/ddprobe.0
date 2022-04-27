Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884D2F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 20:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651092778;
	h=To:Subject:From:Message-Id:Date;
	bh=FZenuvkeHZ5zNwAc4rQESTsfIv/T/70TYrzxiU91vL8=;
	b=Xkq6yW6Wl5Q5UMs09uOh55+VwZjxNDrD9rTnTbJ/x62afAL/5eRN8XBkdGIDuj83
	KYd2+eNHjfmMiEAUTnrpjMu5/4R8B6ZYWXZKDqclvvxKUeSK+lrihB4WjtK+HhzzSAz
	rwahDfVidYMhsG0zZ7GeDQv8bJ1I/g4cvtCUlveA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651092778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FZenuvkeHZ5zNwAc4rQESTsfIv/T/70TYrzxiU91vL8=;
	b=NU964ca1fDlGmSkVMWdAxcQJX3gsXGBbMQv8iAmWWwbL+rAEloPMxhl+4/H5mfsr
	Sz6gKCcWIDLrNyqDFFJmME2Xa7vdb9fpmPihzKKdKKJeAYGsA1Qu1KY9mmy7MY46Suu
	esRRxYDKlDASPfwM5JWdAHgTWmutsySOU4+qcBTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ccc6d5b-42d027cd-6630-430a-ad27-f475f3f65276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61878c5de9f6a0dc3902c4c0d7a248cd3ce84142c0b68ab807005a44bd452206
Date: Wed, 27 Apr 2022 20:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651092778
