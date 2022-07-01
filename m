Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8E1C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656700612;
	h=To:Subject:From:Message-Id:Date;
	bh=ZeON7bUzn80zWwhVhlra/wS20NFtbOThg78FqnCZOzo=;
	b=KzVvrbwQ9RmMrXcji1hg3rGJ6Yrh/E+1lWdEPX8XtPZqYqKKwZet3a7I0iuJg4mG
	suBwUa6fr1eZ1bjU59pCyZwFIJegm5nRQdWA5NnWyoMe771PgBVQ1Wo2TKc4Sbeec9Z
	AP+MQ5uxP2knAUgE64KvmPwRSwJxU3exTPzsMNwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656700612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZeON7bUzn80zWwhVhlra/wS20NFtbOThg78FqnCZOzo=;
	b=LZsx6IxLwxFykFaE2p7KkTyj/y4Mxra1k0mNb7hAcUmE2iomVuaZa5Gol0kIMy/E
	MjM0LXe/iEgX9hdpVDS5xagLVESIbcy16wc2NoV648tFiJMCRnQMqeQvUPhquKBGH02
	1cMy+mCuiDq2yZ6tHpfsbF5Ou8sJpijM4TM8h8wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb0d2ee2-1d1f1ff5-4050-41df-9220-1f3a4a3a30e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9231d2a2038ea1e47fdf6ee06a4ba9ab6c85ddbf2dbb5b8c6a6105fe9e5576b
Date: Fri, 1 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656700612
