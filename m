Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E550612F
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660974052;
	h=To:Subject:From:Message-Id:Date;
	bh=OSvnoSVwPOafzNA7TGfLxipGhuisg4lbNffzR/HviFY=;
	b=GW3Pk/uCIEIo4OxjsLDzKTwlfk9VkUFrB84tBWXshFs3SbCdYsABldqiFb+skVsW
	Rb0PcqEwEfp9sKdKYLEXIJLK3EFMOWBHPIg8xxojBQ7YObF9tanj87J7Z2bs2m/hii8
	ZwakgXOE9p1hkvjVR1s8BHNQvr6X3V71NaqKzhPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660974052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OSvnoSVwPOafzNA7TGfLxipGhuisg4lbNffzR/HviFY=;
	b=HiOcs88gd5JoxS3F9EfY+ES5d7qPgzFb2Ca05yUCmN8a5/h8PsnOCUe1BqcMfd74
	b+u91Iatey8PAR9wZRSMqeJtJH/bSc9hsPzlApVYJ03EDYfHkyUDRd+HV3uMIzskTFa
	9GPN131z24nqDJUsHFyeezTV279t18Z4skkvNhM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9c4b507-669a10e5-1e32-4c9f-8e46-22e9919e8dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f61c62482e83835e4462ec85f474169041a4fcbf7b4c6b768d78fb69d8117c2d
Date: Sat, 20 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660974052
