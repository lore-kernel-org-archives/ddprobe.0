Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298584A35
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658787412;
	h=To:Subject:From:Message-Id:Date;
	bh=eeySVp6AVDKh6TJ99+x4+Zp32Yy5jMecNZjF+/cpAoo=;
	b=QDTViJ4K2a+DPJx8rTX7cPViiPE96E4jDLPFYHIFX4/xWdkSKW2S9Sxo1XCv7N0L
	Y9cx4rfIVIwZAR6Ub9OggdoW8eb9mdjS37LKB4Z8G/9mxulKKefi31nIgxezqA0hhYt
	YTtiuuffK726WvvVdEeh2sxON2f41miHPlmfoDWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658787412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eeySVp6AVDKh6TJ99+x4+Zp32Yy5jMecNZjF+/cpAoo=;
	b=Nedn+dlaIavcOGuSeQzAWcOKz7L12MpEvy5aJk8DJZ38q35UC8Is41URE74zv68n
	t+yBEQhqlyZBOVM98DJ4QgHa9z4sReyPhll22JACRjpQAeYJqimaHRAPDwzggf8NLYC
	NIFDmgY4MqSlA7MSqXpwp279kJ5X+29OOJByD4ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182376f3945-72f6afe5-b3d7-4c4b-a14a-7a5c402dd712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76621fdfd2ba0bc37718e72865e68691f3f0fa384253ad47861ad9a1c25db6e8
Date: Mon, 25 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658787412
