Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985D42F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647442885;
	h=To:Subject:From:Message-Id:Date;
	bh=r4nJ7TgLhzNorZIAbB8nAoC7pDEcb3UKkUDIp3j+2hs=;
	b=Zl+oVBln90h3cQD+kr0eAmVq3Kfd6ApSEVm7f41hctDn2jPz1wUvkcccRK0dvSDg
	/vKFg02VqaIeR3Qy1B4cojlSyjYgpimIrY8h98ZcFdYR11KZqhVX1EbeiWEkHikJq8L
	fe9EpHUV98v3+UosY+6UE2TX1X/WyWp7VThiVCeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647442885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4nJ7TgLhzNorZIAbB8nAoC7pDEcb3UKkUDIp3j+2hs=;
	b=XbsU9m1HQ/1nF52SRNFTcxbXo+Ru/NJ93LuL31REYYy5aYtY/h5OJhsmi/IlzGt/
	CdOABOXPGHX3ZlyJWgN9LiZB9YlPaRc11KUgU3pNL27KlZikLsLsg3rGqFq1UbC6IP/
	Sm3ZM87vV0HWfngLnM1S4EHXgpIEe4lkE2OE1COA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f933f7875-33e965dd-7577-4b74-968f-eb4fa3838bc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3269e09b5e7a11c842c7470b4dc6fa68f2d54e33c095d8ac28a744cdf381b3dd
Date: Wed, 16 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647442884
