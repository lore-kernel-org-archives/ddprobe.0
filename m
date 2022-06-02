Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1013D86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654206599;
	h=To:Subject:From:Message-Id:Date;
	bh=UdWNTOb26iIQ0vTNcR0mbGAKL2/qw493RTShomoAJmc=;
	b=Y1Up7u/nIr9k3K58Z+PKGiiAOKlK1PNW02tkpgP5PQL9y34R1R4yGDS8y4eTEWbt
	FFDzqxfHP6YDoO7v9RwUTkx/PiQo8ZABYXcrBFYGrGOGUdcmbgWEHaBl7ta2OblGdsV
	sSvyLKrlUF955xBp3pfOXYKkPo2f7wuJ2Z7sRECA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654206599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UdWNTOb26iIQ0vTNcR0mbGAKL2/qw493RTShomoAJmc=;
	b=JdTyHTxBLp1E9cgaM5p84x8rb1VkYAszUFcsJ+EHMdwW7wzs/pSwFlHXmt5cp0aO
	JfipJMK4y2faOFDk/oF9TvqTigLUAzBLfn6S1Z5Q8ujPlB3+IoNV+N9wZ7sZaOfpfpq
	iEOAn6T23dLM1UBiCL6oyAjn9dpqU6GdatFINq/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812665909b-e27803cf-a0b0-41b0-be90-143418651498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef83decc54ee4a259febafc57191197aed4681317ac1c3bb7b5244a39758f473
Date: Thu, 2 Jun 2022 21:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654206599
