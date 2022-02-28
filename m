Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A10F7B
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646007984;
	h=To:Subject:From:Message-Id:Date;
	bh=HLEDOVO7DliSd3agSE4GbQKMy/mowFcwit/qhehXJTU=;
	b=MzGTfReDmdXvTqfNMaJ1K+kTJoLY/V2YnX36H/FwMDijT1NtEKDJvtXVsY/xuPqa
	PtVBoQUygmQvHG5NSNXsDVmCQbHfckQpaMfhHp77BrLgyWSsbaMNVEusrww57cOhEWH
	LruMfWWjv5kFeLjsxkmlRFOqxuhT8jJ+JNcPAQ9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646007984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HLEDOVO7DliSd3agSE4GbQKMy/mowFcwit/qhehXJTU=;
	b=fJfD4C8/GjhqKsB8BqA6Tt5rSSHBxasx0UqRP0TYZM6i5gfNS7gSwtX+Pb4ZFKqZ
	J0kW1P8ZzpgvlhWHDzHqS4IkQoXzMaKu/BwoJ5kgELmiO+M7XZ6aDoNfcIlChQhpuee
	MecC+pl8ljqQk4fpY+bDKnuiJvERHwuvazMSdlyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3db8a296-23c3c55a-6d17-46b1-b9c3-3a09353c010d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fa48719a3c81ea10621c4320a3795fe0f2949cf9e966e9b8f892221af0e263e
Date: Mon, 28 Feb 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646007984
