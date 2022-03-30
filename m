Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591E829A2
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 17:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648660318;
	h=To:Subject:From:Message-Id:Date;
	bh=6kbxzyKsm723vVy9xySSAdgDGczMG+qNTa5jOX9VaYI=;
	b=E5I74Ep1cJnRiAfMoSr3dUOXjXaZpsG47fpBKAU83vqUfqZvPXt5PEVkOFBYpSrP
	VSe6GGZkDs7fZWpcVFcx6KuX2L033d6Xmh3nN8LTwL3jTrHvkFxFOFhvsSG3LF6jYp8
	BpL1uUY4oAM5bY8XMq8HfBc7woiOyrbNLUFXfP+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648660318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kbxzyKsm723vVy9xySSAdgDGczMG+qNTa5jOX9VaYI=;
	b=a9qlGvSH0TlqoZoei8hjpUKtvzLgro80D4PrEYTDmSh4nqB4gFGtqhdZbnGR3u7F
	aFx3tQOd6XpcCCqwJ9r+ba2sk2LEiTgyqeYDiOWNBNm2kBLVg2mKoMtKnszOzc8Y8gc
	CaNLQJ+YjxkLs9nVqFI1dUJFpKSpzFm369zUoOSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdbd0082c-53f6c3c1-8cd3-4fef-a40c-4ce6c57cfe1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b563025948c35602e84c455789b2a79a2b3e7e9041befa4b9f6dfcb0cc09a0eb
Date: Wed, 30 Mar 2022 17:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648660318
