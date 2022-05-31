Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409152562
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 22:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654037399;
	h=To:Subject:From:Message-Id:Date;
	bh=CWsMP+6zIBUkrYh6uD7jD+v1wjgqgTsoCOXgPiHnoeg=;
	b=fd22NvnFIaR2JkrvQKlMVqUdpmq0b0urjMsVVmv5kIw+P27JM+zZBcdpgtt/dpS7
	K24D1+nLT49ydPb5OZRsb55Yw4mGIVu2aiUgwHVZwSdEPVq3jXxo7gLw8iB81zBmNwb
	xl8FpGP5USmrI8HYUFReI3EVj2oQst4+kiWusZA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654037399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CWsMP+6zIBUkrYh6uD7jD+v1wjgqgTsoCOXgPiHnoeg=;
	b=UmS4/PS0PVurpvL8Pk6Ks5JTkbeMclHKtQB92TX5TbOyD5pLddlfsi+1xE4AI/z+
	3oWTr94pYLCPkfnwzVwNuThDiulEy5xHqa5zds4j7u+HChGPgX5ByW7nqfC2leCrF5x
	mR2q01KAI4dAJVseFbfLHK/t7b1Cuf3qHA/TzkUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811c4fc6f4-5faa65dd-17a7-44cf-acf6-82652024546b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2101336b4fe2289406ce7cc4ac7561d75439745479daa3894ca832397508c7d4
Date: Tue, 31 May 2022 22:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654037399
