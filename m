Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5755815BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646809284;
	h=To:Subject:From:Message-Id:Date;
	bh=6DexNVoLyIQW72md9sgc9DhPUPvq9qJlZ16inf5JFgU=;
	b=G32l2DtpMit2QA2p6DeuqzClJMPwGE/RFANK/uK1cEd/oyeeyd2a7ZDVqRCeH+Eb
	WDt+qdvjvWabPj1n2tXV2ytDLY51nw2VH/qN/DUcfc7Q2z5jeBU5ALivsRzB709CPca
	nbtf2pZsHZBeKqj2OUPuRrs0Dy1qeObLYgcynRkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646809284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6DexNVoLyIQW72md9sgc9DhPUPvq9qJlZ16inf5JFgU=;
	b=B8lF5u+ekqXzf0Rxpbq0LxgAKGUm1fOVwjD7AFbcd/kuGSorxB4LdEVu7aZ0rVQe
	zqXtmO06TMx73htEMJ/wTOpFrQPmyUs+UnRP5vk4Pz2mYcwPYQOqx2e7WyLW+tXsY8J
	cydpAbTUT5SbWIf8eraTU1LdyWYKgzV1xbLaDYxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d7b8053-243635c0-6c18-423a-80cf-1dcebbeedf73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 006babd450a36d363064c17939d7e35267cb6c402792e2f0a65408301e44183a
Date: Wed, 9 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646809284
