Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3BF7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645600584;
	h=To:Subject:From:Message-Id:Date;
	bh=aJhgA8wlsM4jxD5fbVnDyDfcO9jl28C0Mx6ophXlKdo=;
	b=c8zfNbmGkIqspdP7CdEWNqKMamPXiTKbADteBsV78m+gOddp4qMWJNpjRCr227u0
	2QjQ/yHgVsk/sGQnNBGrWGSfxT6LSUb5mUJXXoggOPmw6GDh5Ax041qkqKxLCKThSDX
	TC7P8/s8Nq4mPsHQbQFnn/ZrBMHu+Q620tTBPftI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645600584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aJhgA8wlsM4jxD5fbVnDyDfcO9jl28C0Mx6ophXlKdo=;
	b=EtQbugt3Lz2/C4Y4NSPQvu6kkHrvJj7k3EacLyh269IHFFyju1M9Dl3xBeB/3PxG
	ghKPqADAJruEJorhz3i7L/7p41oO72WcjjpMVARszCMJ6RfAwHW65DVKgSMFzXWYUkO
	sedFeN7CcUsBiEQjGhHSrz2ElYBlDSSJRepkQIkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25703449-8daae863-f785-464a-ab70-8bef84526b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 581ddd92272ec47456e5f8e41eaff7bd73d7c9230006f773d6f5a5c8aa9f34ba
Date: Wed, 23 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645600584
