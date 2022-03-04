Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628CA7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646401884;
	h=To:Subject:From:Message-Id:Date;
	bh=Zl8EqhvnMMpDJMF+WEISkhl8+Z4kkM3991f5GEaWQkM=;
	b=i7fwgwn62kqMC7gewgdxApFm5AA4ToFENmxNmU9AyvOeUh63FlyhlEpy9OE3c5Xd
	VWvu0ktmKyNobUi9PdopZPjIXBbJ6nVFLhB69n1QFIcYpS6wpjjU6OGb3Hblbt73zAX
	F0nq7yTEFA9DiFk5AEWunuFI8V7SflNjkmGre5u4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646401884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zl8EqhvnMMpDJMF+WEISkhl8+Z4kkM3991f5GEaWQkM=;
	b=h/wp9CLmt8yHsEyXPWi+VRUDb4cEHGPfMLeCsxB0r4LxhJDWMqpeiV8JwNX/VkiE
	29UZ/6oE9V9Xjt95YS48fdS9eJ0Ls0qAL5TAtlDnMAlsCZBFEmZV5lY+e23DGhaFNsd
	zmvbanVOER3jZ/biDO5TKUrO2+UPvQ4vCaCsB4c0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55331237-4deb172c-d8bd-405c-9042-bfa3399b46f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5257bde644154c710baf056072109089ed1ab3d4ba1980bca8019aa5976f5d80
Date: Fri, 4 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646401884
