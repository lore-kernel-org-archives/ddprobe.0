Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97F80F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660398052;
	h=To:Subject:From:Message-Id:Date;
	bh=5BD1A7mAbdPLR/psNW8ky9I+1JOz6ca/AdhoIqk+FwE=;
	b=YJACEJOU8Yqn3M9URh+w9kB6KFDBMBjO2hqTuVJ14sPFpYm3jj6QxUtNqApIbv67
	uLrvx0xqFBjqSuQO6nYYxKve78WJ+Nzuxvip5O3RmqLS+TKhn4KgEmsCc4TYJG8dKM2
	96Hve12AUwK8G5+KVPeRJgC+jLNLarDwrUan/uZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660398052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5BD1A7mAbdPLR/psNW8ky9I+1JOz6ca/AdhoIqk+FwE=;
	b=Zzv9tT/xQKymr4pNI2hIA58heRZvqkUJbYjf+pwBCkwZQOLrpvM0HQ8egwjiZAcI
	O9lEs0+df4jVHC0tgiAMVDmlebtevtZHETfn7lN3YJ1fqJgLKRqLLpR0Ct6rHaK6sCb
	EhhgrKxjzXu5aDMUzxkabhFZZAKQepa6cOuxf8HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182976fa526-302d4b4e-a29a-4a41-bcaf-7c080fbc998c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e04211b33751087529ee0fb5071a961a40aae16d29865362c84974c0dabac4
Date: Sat, 13 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660398052
