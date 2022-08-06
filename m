Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636A71C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659806452;
	h=To:Subject:From:Message-Id:Date;
	bh=88JLkFZB/BKfKtQHwsKTCRj0GZI2GEG9zY/rPhIqdTg=;
	b=B1giu4tJURnyuknyDsE8ZG2EqpXMq9/UkQkXMqOigo2f6wckcYuRI3ZQ/y/Hp7So
	YRs8paDnbYiqqRr8MDu2fIccHcwtgD2RSWWMkRsqazJR1UT1fobOMuhIs6dg3KQxG0a
	+koX9QV1EomwXgzOzKDgJ++Qyq/4zoMpR5ITfSR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659806452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=88JLkFZB/BKfKtQHwsKTCRj0GZI2GEG9zY/rPhIqdTg=;
	b=MdC/VoUR/MZkZERTEOXqFuid4ZqbPPP5tLyx3VF2fUQCmkby4ka3CPLMNcOUMEsF
	OUz55mUFInu1ZDltMqj7cqTRtJl1WRXCVaUUk4jGvUmztjAX9TlpHlRLZLrP3kAsyk1
	jVrNZubkNzTN32E5EkEpSuNqqfpFfYRgkmJ6Kybo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182742c8b92-4c3a49cf-9f64-4e10-982e-12336defb1e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 900331275281c7b1aa70fa3a1466e350619ef59f9c3058331c1c1a66f02f0753
Date: Sat, 6 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659806452
