Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42083D6E
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645108585;
	h=To:Subject:From:Message-Id:Date;
	bh=gbiR3pRG9sUypvmDqoyu/oCV25b0N0O2Wl8/VjG6r1Y=;
	b=P+TpqV2qwUuyF3OQnrA/g7pi2T2d1NkWnOcEoi5YIbkiYghdQYioITREiwkOq2j6
	DnqWP5JTdwXEZ1syEuEY9Q4xyNWp/Xzz87Fp0YsMuKkZrR8yTCX/To6/+BB3KDAuP3L
	/lioniZcAjEUeg+py5f6sYUI1wcprfiJ4i4NMnn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645108585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gbiR3pRG9sUypvmDqoyu/oCV25b0N0O2Wl8/VjG6r1Y=;
	b=RnfniOD6qbv5FOQkImrZ2GYZ667mDShScyGayGm4xDocd3HfBrfNBtNd6Uq/0n3S
	80YceV1Uaev/m85SRsHQOZc8xqW3KB0kVx7DM3j7U/Xjmi6nRYEW6xlqAVpDYPOXTmd
	mAd93XCcoaXDGPHqzPFrZ1VN6oNAa3ooKqodrJFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f081ce1bc-0a76d848-dd19-4217-8062-60dc54555785-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bb35a4ccb4b9634e8f2a60df7f7c82270ccb6be4b79ceb1d18d2eef896a2d63
Date: Thu, 17 Feb 2022 14:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645108584
