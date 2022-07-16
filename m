Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B56659
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657992412;
	h=To:Subject:From:Message-Id:Date;
	bh=f++4HcscDWYURk5OLxCk0HwzN65JlzS07YN40Ng1984=;
	b=gKc6psMVN9iyZf/Zjk9Ye9Ap3KBE8rw6S3byVOFLMk8hbgu9+b5VI8ieT7n/m02Y
	SIihJXXxVPfq8UNvOyeY47moH7uh0dPkefh/ofLcvCkJbiXRUbNk5sBAzf3t4N5yyLJ
	v2CJitMkKJdiV5o6/RD86+igxA8NtyDgXq4p4gmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657992412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f++4HcscDWYURk5OLxCk0HwzN65JlzS07YN40Ng1984=;
	b=IpzqTJwQPKzvn5mUmmKe9PhLJTy+tWBJte5XbQWGjokMIp2gbuADdOXPvvBCRCcC
	btjovLqC+2wiW5mTjM3iq7l/L7PpD71Jjr2mTFU2kDoso1+BcJzNz8Qr1IXOGSr5rUE
	Ak64WVykbOQwqhJbw1bD9DPSQXQy656GSZjUcKoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182080c7c96-4d6f5624-9cd3-41f0-97b1-687678ccb31c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac66dc85dbbf928e66c7ad7aa987e89f460e19cac9957b4d5b30f6f6804ef4f4
Date: Sat, 16 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657992412
