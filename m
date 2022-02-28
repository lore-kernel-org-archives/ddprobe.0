Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8D77A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646067685;
	h=To:Subject:From:Message-Id:Date;
	bh=fdt4GTLJTsPaxWvKxG+rqx3GNKegCxsZKfQIbB5g714=;
	b=fPx8geSe4DdoVyapALG8DxKCXGUXMZtr1y0184bJy8kWoWAoxhI8nkAXXSdfC9MK
	scQhFu+jT66uAF7fHHzLqFeLyV7UQpg6K95Y8oFRAeOOKlcrlEu1vCX7r7H+0+ImQnw
	lAZJiVewGXX+YcejUV4LpwPEtxhTfGHlj/WIyN3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646067685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fdt4GTLJTsPaxWvKxG+rqx3GNKegCxsZKfQIbB5g714=;
	b=LAUxGy/34gLYI9dAlcS449ofqDOjMo/I40F38iv7n41TshwZjiczT5smjQhf7OCm
	v3bUlPpvPsapVkWRVtYtY2e6ek2r0+3FdQZXx4Q/kNTabEH7iyr33BrwGYOkbRb9rZn
	npe/BA+1UlF00+q9CE3hjsBW5Y720u0vDAfUMC04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f414795f6-61ccf6af-9463-47de-9451-cc66a7f8ade2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82cd86b4830eca5eb969e5eab70a3d884e4a77fb851ec96d49c6b80762f3c4d1
Date: Mon, 28 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646067684
