Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AE123D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 11:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653739079;
	h=To:Subject:From:Message-Id:Date;
	bh=KsWWCu6aUBk3gVW4x2KbYM67xCkHHf/2j9dUaQ3vq70=;
	b=V4w+ngA/0i3aD3ch7Z6i2JNXV6wNHG4vgbmMEuqCTrLBHhDmURBw+Ucn4XCb5chr
	GJ9lFcqbrrJaJAfh4/46VB8dtQxap1cti9y966F2e1jW18vYMeA7bw0022f9JDGibkF
	DyPwWRNN/dCGYHnERohXSOCjBBAYIFSNoyVG0kos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653739079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KsWWCu6aUBk3gVW4x2KbYM67xCkHHf/2j9dUaQ3vq70=;
	b=Wvq4XtKaOEAi+4mXu9HqZYnm6utjjhYKZqMukJ/j6aMkQCCXUbHJNzG4APJkamt/
	nvS1i+6G+3pu180c3Ym8DiDRy6p2oq/KFZ4C0vHP3aJHPhBi8++033r8PrRnsj8rH/+
	EO4Ezq7mqKcjYdHKPCEznq/GgKLO+VyNHjLKrVuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a87c6ca-5d69ebe6-d6ec-4765-85d6-14ef9931ee48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59d7eebf8f56319507a3695415fdf72d3c71a6ecb465631478aa677a066c4b48
Date: Sat, 28 May 2022 11:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653739079
