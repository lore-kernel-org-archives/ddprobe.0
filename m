Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A1C36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647045085;
	h=To:Subject:From:Message-Id:Date;
	bh=1PqbxaVL5OW9VRP/wpS3fCIH8Krnc7pfp4oSv6Wj1yc=;
	b=hzBVQjJ1fgctVNo3AeN8zwHKqs48QLKuytKtwV5T5+n3UZwcxyHrAVb2Tfs9mRYy
	q4LNmvD0E6C3pVIKVe6xivxyd8U7X4LvwNZ8cvytMUEpNl+UjN+XXfU4lMpj76V+wVn
	DZj+fpysmS+mQsSKDfzdZQ9i2Vas0ljQCgGpTAec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647045085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1PqbxaVL5OW9VRP/wpS3fCIH8Krnc7pfp4oSv6Wj1yc=;
	b=gJ6vEI34fu9gi5lpkPhu4ueMT/Ak2vKVnUuElGzDpCXbx26lsLxB6WhzXVl+1S5/
	d8r7FIdBQkUB/5M5N1l9pE2oJVgwh5Y6LNGC+cHlrH53LbxC/wr2cdRjzNaUeV1u/GT
	TBwDMV5ImGLF1dqpC/U/kAIoalo7SppYD/Ld5j1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b898643-0df549b5-30a5-4509-82cd-5f0a13168d02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2183d63c488e884a377d0fe0a6c806175b71ffbd4c36cb08e7d5fc58c8d94298
Date: Sat, 12 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647045084
