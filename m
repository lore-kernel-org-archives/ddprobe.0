Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D48A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656573412;
	h=To:Subject:From:Message-Id:Date;
	bh=77WhzFzsn+hmBLUBnf3RwDx6QQi3pzETk5CM96IDYnI=;
	b=T4C8Jn5JRB196Bsf6T+a2Qasqp3N5L8m1DDX95zlJmvi+3HLbxkWchmrkL26At3e
	cG2XiiDMar1/btkYjrcGHx0yTjUK34ws01aox42KVmxrog8FtNgTUqRGZptl7fiG6LU
	CQtCWp6Z9myuq4ppaGBPYsSPNXU7eOtReKiqyF5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656573412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=77WhzFzsn+hmBLUBnf3RwDx6QQi3pzETk5CM96IDYnI=;
	b=E9pOT/NOUlRcmX8S6sKwLGF6hYsUDvsCVbQt+9HzdHEFrTqIOhRWaQlnWRVg7ajq
	GGnR2FzwzULdxnILBFLe3NL5tKxeFh8X+LofyswKyys0Fvs/06IhTTJw5miwPqAcClA
	grG7JoOMiNh0aFz1wRQzFmwnuRZJ6dOB8rM5k98w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3784438-309ea4eb-6b04-436f-ba6d-5a88c7e8b7ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da122be59718ec8024faddf57e960b7828f161ecb3543da1a10b8c12e50b5537
Date: Thu, 30 Jun 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656573412
