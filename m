Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F556A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866885;
	h=To:Subject:From:Message-Id:Date;
	bh=l5GUWcD0DoXm3OHeNPVdF+3KzzSL4NYmJRcsQ73wfm4=;
	b=PjXNzgoNunsXGyW9rdiBm7MVnjS/1oA1af3n+AtAotwaeMb56EiuBbDMc+4AtBVo
	JcuPXoTC4z8E/tC6LeuYLyFdRZ8EoyIHsAmQTANUhsb4/hagnEW4OdM0o7J/ZJlPGbB
	yEr6zUmWq7K/uWwmTu1b3yXss7xt529cWOi6/Mnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l5GUWcD0DoXm3OHeNPVdF+3KzzSL4NYmJRcsQ73wfm4=;
	b=auETU8RcrdSUq0xBFPViCHsjxtntSqqwW9UWamV1RsvmmAoapQu3HG8n/IB5YIsk
	36UsYwG6VhZYlMicwf5DuzuCXriobfN4HBraEchNolKp8/6mhSkYalMaumbHWoELbRJ
	ePn84m80Af50h4Wyy7hFQlQh+p0vgb2iztHV61vM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b4d4a0-7ee38f8b-3c21-4cea-99f3-d4b4d4140f5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4495101e840e8270e7144e08f32446f2ffb5984931b8d58a3df539ebf7ff428
Date: Mon, 14 Feb 2022 19:28:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866884
