Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CFD2F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645934785;
	h=To:Subject:From:Message-Id:Date;
	bh=5zjVBbPth/VIJ0/Qf5J/f8KbW1OHyikSfdAy3ff1brA=;
	b=j/rI9Cc8KwqDHbsZ1XqXWZw8l07fioPlZTJB66Uf4Vs5mFkq6XPHgkAC4vtcBB3a
	h2JyGb6pNJXue4BAmLjr7aAyIUSLB/bBbM9rbe5uYtkMk78HeijARpR5n0mRxAPeZe4
	ogQeJOgnAiNThjRKm2ZBuzw+XvbLrQv8l3X2HV6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645934785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5zjVBbPth/VIJ0/Qf5J/f8KbW1OHyikSfdAy3ff1brA=;
	b=cuqfucqnqvry/lLXLfaBJ6d+rVEZtsX2yqF4XQ94aa5/wPcYtPYhwzQvsDas5KR2
	sRcwbZWsWde9kcKkCWxsv4Ao8vhU+e5pZV4/7vyStw19vLlWHu6GQE60+vk1FokT382
	29NHW5UErT8HJPMPAG5wL7GVOYWXUdC/ajcsXQ6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f395bb0e0-c6c16981-978f-4f22-b3af-96f6f2859168-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b59d79670a85f709eaa5e48e78ca755c26df1a27976f7f8e6ad1ade5457053
Date: Sun, 27 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645934784
