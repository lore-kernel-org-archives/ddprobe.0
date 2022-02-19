Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2A72F2D
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645239385;
	h=To:Subject:From:Message-Id:Date;
	bh=PdzhIQfN88KwwjGQ3Op62Ws3ywRMm+I/WHXRcjdedVM=;
	b=L8Fq8XH2soU1vfnetVHKfMK7brCFRjIneeuJ3MZ/6+uHGvmSS/fDoGdKyxA229QE
	PBSMdw2G3eQbgttGzh7vKS47aK0zNpdqBsdTqxsdSB0sKEQGHqGwifU+x84bcVVqOBr
	flEEar5AJXPHFnou6u6H7uLdjo1VZm1KZXAHLyQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645239385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdzhIQfN88KwwjGQ3Op62Ws3ywRMm+I/WHXRcjdedVM=;
	b=Cgp3jwjZ/CcOKCX8SaskDVcyrbsNC3RfyctmQSkroT/Qwcyx0Q85uQys+wZoyhG7
	PHG+nCm8PNnJp0AaJTW0y1uS4g62VnMi6At4RHq5+138kKzHncooApMYUbLPwnzvr3m
	HBg9mkjZ4/9J7u/OV4hjEFDdh4UQW8ZcLX6mgc04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0fe8bb11-42c47989-2767-4d6a-a40e-d0086daea147-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f5b48f2a37e253504f1d88d0fd143be6eddf3bdd23f7e1d5046b1421ae4b1a0
Date: Sat, 19 Feb 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645239384
