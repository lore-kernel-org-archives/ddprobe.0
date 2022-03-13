Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627F67E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647144384;
	h=To:Subject:From:Message-Id:Date;
	bh=VE6ddY4v/5OwjIL2RGHTeNKlt2XzgnZOfna8CsenvgU=;
	b=kEjGhpisBURyH6bPe4kVwtYkERiobgQc/n+4THgacxdJrh/VPUIbRd7JAmMJ0r1x
	f+P9wO8AbtycFsRSdeLS4SQTX7i7Edhun0wNtlCgXzSnKbN2+e6Mu0b/jLwSvx+ZNtq
	HPNYOYHOKOG6WbmNMjQXh6s1xfo/qc+ooYDivyRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647144384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VE6ddY4v/5OwjIL2RGHTeNKlt2XzgnZOfna8CsenvgU=;
	b=Lwl/yJkM51gfPQYi+CiobTo157SDtjIbok6kHeRtOsbX5gLsnHrsdX3cdgV3qccV
	aA2O7drCRbZXbUM/tuwqRys6LMl0KiV41LEQYtXFv7r666+p83THCGxmsEj6xDIpF7n
	8jwaK+W1IS913E8UyYp4OIN6N1ohNsguSW7GoJio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8174b94f-2cf18b1a-cf82-4a55-b304-e6b2b58b5d71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a70182dff893efa50fcfea4373e43cc25e449bd567d1ed1f408c4a7f63726c4
Date: Sun, 13 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647144384
