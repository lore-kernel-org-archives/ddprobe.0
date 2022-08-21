Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691EF20ED
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661097652;
	h=To:Subject:From:Message-Id:Date;
	bh=tFQEw0qZ73F1G8Wl492ZKjqQCjJx2BTsFAu3yvF2/zU=;
	b=ZJu2fKkZ3grKUJSMkvJzC/GrOcKYoZETFzSbPwZrBUn2Oj0etgPks75qApxxmwAj
	gKzMuH02AwUb7CwF2TnN8ZkM0a3/awr29URG7mv7dY+MfmnJNoJv7eIlAW0CQcdnhL5
	j4rLhWnM5x6LPweq1yx2xuFqUkyV3e3TuDmcVYuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661097652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tFQEw0qZ73F1G8Wl492ZKjqQCjJx2BTsFAu3yvF2/zU=;
	b=MuPBrXrmUXLqogeeN80qoV1byFPCePx4kkS1yYyUx+cKeZzWkoBtAhP9rWVDfMJ+
	ksWCMnHPybTFEzbVv59SufvN0eJmgg/dS1Z18E1+bgHsV2KUY5ks2CzgU55hkD4kwrL
	o/gWnSoC3Wp6G+zVuD4/v3vEjJatcsHPUlTbvgU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c122b174-ec63901b-616b-4713-8f37-f92170cbacad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb1d4ca5de9a712a9efda0644ad36e024ea81a30a842c2eb49ae2006482ffa03
Date: Sun, 21 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661097652
