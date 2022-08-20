Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A182F17EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660960853;
	h=To:Subject:From:Message-Id:Date;
	bh=G0lRWYUhoenUFRPtedCUFFvIgT7Eo6SdGvpQTRA7BR0=;
	b=faJDCpjabaq9OLWWIp1TH8rZCr8VyGdT9PO8q8ITA25aeXdmd4lHsi7rJ1gIWrfI
	LABgwRonVVkUxTWJQ6CTSArRNFK6EwHz1fNW6NCOBjYXO/sdblrT0HhA0CCxDO90tF4
	iB84Tu22SebXkglfEn/ZfQAQXvVH6xrQPq0OJNig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660960853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G0lRWYUhoenUFRPtedCUFFvIgT7Eo6SdGvpQTRA7BR0=;
	b=OW6Jikk7/PnDRn0qrVgEhvl62yQL2k5h7aKvz0cNXGJlAtOKHCSqWEPofBy0vR3v
	KH6/IsJIKi3Gjb9qjwLPbaxeYNeQQA3tFbr/c+yJdlYkk0o6tQj3MDy/1/dVVJnc++q
	AVV1Zn3CwctMn1NZte9CuJbNWFWZIqwrPeqrgLBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8fb4ae0-2a2e9d92-e39e-4dad-86ce-a715390f1bf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7e11b2abd16685cd1d5abef1aee77f2ad1acf8a9050a4fa57c7bc87ef232907
Date: Sat, 20 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660960852
