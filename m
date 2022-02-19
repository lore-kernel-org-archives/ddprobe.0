Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7352A4F30
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645237884;
	h=To:Subject:From:Message-Id:Date;
	bh=eMMmv9jUZ5/bTCljTGTjtK2S2mSoBRwOuvTe/xb4Qms=;
	b=UEN5TUc05JAgj85mn2e8YBH0BFAzQXESFgduu0vU6DwbwnnwkAWGhooqF1y5m1zN
	IcI70V1ZvOCv96f+RmA3Pbr9Cf2lcbo3RC9dc7rVCSqiqcIT7vo20XlzVx/fUYCUurK
	BGgvCeWP+LfZPHJPRHeXb6y5JjGzOOwKYvqu2rqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645237884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMMmv9jUZ5/bTCljTGTjtK2S2mSoBRwOuvTe/xb4Qms=;
	b=cOjtWxCy4s+IpdnOYREdcW/aEJHC2Nl5LldjMOaxeMZGcZu2t5NppcYOEZg9B1bE
	ATfbo9iqYlJVwzO3cWLiwj3EPkyejqOM7RaSgX7OZqA4f5sEzCax/Dc/Vk66FtNeI0i
	VrTW0lhTH64z+VLBo0KHf5F3eAp9yFGcnOei4UUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0fd1d7b5-c7e2dc50-437f-44e6-8074-1da787f6ca1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4421aaf14df8a0cf052b9ff9b5d505a7af219206601ba93be3ad363a255dbd65
Date: Sat, 19 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645237884
