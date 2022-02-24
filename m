Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742661373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645738884;
	h=To:Subject:From:Message-Id:Date;
	bh=ImN1vEWXkufrOiPDfzMSwtzOgvLQx/O41Puiev58x3Y=;
	b=ml1ohSpJZOg6gnt74L41JV38n27Yuw+O5sS84E9QE6jibV7qZ7vFWwjvHO1ngeqi
	PUYEYlnp8xTgqiLqJPRWhKEXIscTbxhrEqvEc8srGmkJtNPeurv3IcK/IWc1ykTRsQQ
	aWc5Dp0wZFWVWXWMTA9zNZzt8BAQTci9Gl7IiAW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645738884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ImN1vEWXkufrOiPDfzMSwtzOgvLQx/O41Puiev58x3Y=;
	b=Imm2qaSsfJST7FNvPZmj3zUXe59KvEAn1ZZXEde5F/c1Oa/8mL+NeCuDpuC6oODq
	+qYbotqMGo5ZQOVWgpZFPbts0cg7f+WlEnAFiDVCR4u893QBBdPv0wrZ/G21I4wPKrq
	1mvctM1gNI0ZX2y3P5jD8xg1xYz36EFUCWg5W5iA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dae7e74-f8d4eb10-a575-4720-b74b-20a9e103b364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d0c06c190029e49999c0808a8dbbfd6754d77d3e237c60dbeb73c8c4704b47
Date: Thu, 24 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645738884
