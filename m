Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3F04A07
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660857052;
	h=To:Subject:From:Message-Id:Date;
	bh=2+ymNTHeEYQwW7tjV++wenTHhiZwkhEBo11YY9DKDfc=;
	b=VYD4Epl/FlZUqgD+vyX3NUbeKMDH8uUB/lLgRC4yMeDzrm+Ay89oz7PoWHnUt2EV
	N+znee/Z19T4Xzo7XRTG13U69MlBGz4MsgyGZy9pASNnhdfJFENFY5fzlrbsclFrZ8T
	mIKHPtkXAwz7hY+JroYnx8xPjZQnBTJ217ZokOh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660857052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+ymNTHeEYQwW7tjV++wenTHhiZwkhEBo11YY9DKDfc=;
	b=hFAuW+szMHUUq/mVZxv6jYyMA1Qa9E+ElD+jtd1mhV3B7XB3qgfzvhchjJiLWCrn
	FfCc6bVuhdaXIMgiUt1Kk+OOqoO4znQw1HaED7E9UwicWi+ErdOoPAZtYxztzaEKsI+
	6BhNQvnujxv22E9mWs2IHG2HPbPWpFqZysEjY5Co=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2cb6da5-80cf5985-5bda-4bbb-9d55-92dc967c8b3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd06dbde33d9cb6a44c5e66fc27a07648f098ad3ea75c5703e165f5a15085ece
Date: Thu, 18 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660857052
