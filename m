Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921A5187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645015284;
	h=To:Subject:From:Message-Id:Date;
	bh=kzrulQciKuVu2y2TIaETzKG2ExtF8ky9OxeMHZ11wVs=;
	b=MFMehe7j7ECrSSbVVxhaLcLBEFZTcDLJLm4H2n4AVvAqep/7ZUQYhmm1dC8+RzFo
	LNqbU+Ie1HJpP7cCfo3ZI0lDleU6AdUecveIFdK6pD2zjIvtUpdg84gj+OoqykkJjwI
	dILuAa7IBQLXyOh5f8qQq7+AeK2jAbwkYEh2KUHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645015284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kzrulQciKuVu2y2TIaETzKG2ExtF8ky9OxeMHZ11wVs=;
	b=AMpzPhISdTlGqvmlY2pIKLapjYJCSEstCWNoQ1d2OzOxIdly5q/zVJT8cZLMhDak
	Ro4QBjDWBht1hDhQihunIOyXkN+hhKNluW00mSCMBkUL5tz7KGi5//T1b5pjJJcIvzp
	3kn0uo7iP4AZuhPRmD10xXYxhYth/WjiCt9zVJpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f028d3bec-818ffa25-599f-4fca-b00f-a4b96177b04f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8a453322ba818ee80ef4356fd6bf0a29f22a4e1026b7d9f49b09cf7af5eecb7
Date: Wed, 16 Feb 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645015284
