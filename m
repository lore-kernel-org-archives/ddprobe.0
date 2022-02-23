Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D8FA56
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645617684;
	h=To:Subject:From:Message-Id:Date;
	bh=u4ZmOOIKoLTuQZKMjX+7GrfhnQkYP1kCaP9fr9cALh4=;
	b=Xp29Jbtvc5TPoF7d6V/9SHCjMsG/0y93MWO0KH8P3rwF0fkS0t3KdBa5kcWR9XHf
	3s8HuWRYZKoKvdmQfDVO9HwMq4LgEOxJ0FZzrDTBurI5uYiRFEK5PRhvbNof2ExsNCC
	zrqQBOPAA+Iy1iUvxubjIv+qCaYqahDvQ/i3EkQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645617684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4ZmOOIKoLTuQZKMjX+7GrfhnQkYP1kCaP9fr9cALh4=;
	b=izdDbDiM99G0cVdanXWPra6EOhxz1KAxpFNQbzKXI46kJUv3VnKtiAcR9IyfaD2e
	Ia5NgaJrIqdH7WCOr7pKHGjdefM8IbZSmCZfceTe3liw8ezZAWlxea1nRKip7xYys8e
	yfgMcvSc0y+nM0vDA5oR4puiHKRlfs50NBw3gHH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2675212b-10648409-14dd-48aa-8e4e-5d121b00164b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ceeb696cffc409ffe5fa8edf5165ca3b1c70afda5f6dbd9e407b4185472325
Date: Wed, 23 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645617684
