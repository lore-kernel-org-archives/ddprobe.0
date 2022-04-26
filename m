Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160D47B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650972358;
	h=To:Subject:From:Message-Id:Date;
	bh=3EGVYSc8k4sGPBd9whPxYZXYVd9chwD9wNfoWuwC6LI=;
	b=QVSlrhY5pLDky12rZvjYzgp6ZWwsEL2BmuFhuQZY1b4D0K3bMo12AQmFq/Ukw2k1
	+xPkDiBnCnDnxPTWNlukT1HmuSm8eLdJZglpFHV2m2cnid/vX08sf6H5LDUkrnAQN8M
	xPQSqKnVDOFMWYT+Rh8rF90NVsHcXtz/YMhSGuoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650972358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3EGVYSc8k4sGPBd9whPxYZXYVd9chwD9wNfoWuwC6LI=;
	b=WG6QuM0yX/leq8X2IX5FNK0IuS5Wdzrx9iJR2YezUzYFM82x68XNXMTeDNLn5h6K
	zLQPqYzOtugUPAqDUj9BObHJ/Qi4ylYFdKYU16U6Nkpjdw8I6L6aD+s3BD9d3Ek9fvh
	sP1CcvU+T8R4J1ny1mp4fSxF5801qw2hj0ApVNaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180659ef6bd-c579c891-956b-4a10-8e22-c17b609e8c1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f3fef9a5d609b438f7b481b6d1fc01b079cef76cea365f8367833a99122ef1
Date: Tue, 26 Apr 2022 11:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650972358
