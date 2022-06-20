Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09322A57
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655734799;
	h=To:Subject:From:Message-Id:Date;
	bh=emtciI7u8P/A3WJ5y+JuBeYOG4Nd5c9Vb/Upbz81HvM=;
	b=gu/Y0GH+XGWTynERsjRjfVu8OTz4LU6ugM2CURCP9kW9WMwOL91EDHkIah6WzpEk
	zKi/kzoqLZw4Up9FZJrLUlm4ctT6ERmPKiSc1BG4YwiGpx4Ijf63Zv51mEsw5PdSoIV
	O1aA8jeNEoJ1j5ToP8CykL8KIpPvqLoXfWv8PII0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655734799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=emtciI7u8P/A3WJ5y+JuBeYOG4Nd5c9Vb/Upbz81HvM=;
	b=Z6Tgrclcv7FupqlmXTIr7YbbZ//nVb2twZNZIfp1D0s3AhLAnk98bPKPSzSNZBVt
	okF5cwuS4mrTiIKIgCkwfzEeVMv3aXRNTtvsGjArJTMyKEprbUyaJosIVItQKQzdta/
	x1cTMFDnEigcbDQGSNeEmzdgJOaei3buz4OcdSCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181817c0b72-01b172b7-7e14-4d12-b6db-ffd378d5173d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4368a8ed0cac30b75408889cb56464b8b7040ef67f2683c7237d7234abbfef90
Date: Mon, 20 Jun 2022 14:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655734799
