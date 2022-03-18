Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976F315A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647606685;
	h=To:Subject:From:Message-Id:Date;
	bh=+vqbtvjx7iVSyOt8aPrmaZNLHa8X/5KP9MV5/x3I4/4=;
	b=Y4eZbVvFAAPexnX0nSIfg2b7GaZiZ1AMhV5yeu7zUzM0NepTu3j3VMInb1aSuVbT
	N2GvCDAeFSm6fVHLkOSoDxKPeTKar/fqxgAJhAhOZeJwem16qj5j7UjbvXeV3BVEOes
	K5K+5xeXu8g6Gc9cuDDbY3PQNTvz5CcV+uOZWwU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647606684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vqbtvjx7iVSyOt8aPrmaZNLHa8X/5KP9MV5/x3I4/4=;
	b=IrrUNlHbqNLw+2qkWf5Xj8fQGt01FsHkcdxaKkl2OS2OfpGrs1RCnY72nHH03WcJ
	n+fiLQAIREpprZsepGKIWgnXoZh/joiokotiI5toCOK7//ogL6WmPEFWLMWwZxLxTqQ
	6GOox5jovkwsAvyaEsYNNuXk/FZ5AIM1aZ5uVTVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d02dca1-6f3b34b5-46a8-462e-a73c-9063a1a3c618-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92a15a422b1c69e00115b21635af01271498d9ea6cf83edeb4759978451a3834
Date: Fri, 18 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647606684
