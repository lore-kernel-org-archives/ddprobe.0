Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2864336F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658026612;
	h=To:Subject:From:Message-Id:Date;
	bh=Q52A97cJBFSjZ7BgEOvHQCCvuAKOPZifUGXkr6E6O2A=;
	b=fC5Y90HqgpMLOlPltiU2re/bQlkIVdO2kWto8rBeouSkcsNbeCkx0DaN7CrtOUkk
	fsbg18BQcIEGSWgg6bS82FsR8J0QDCbVc07rvO33ZdvNy/o1bpwvdtgmypndSvVHTqw
	IadezjE3fjqE2BZNS2aoH8X2jn83Wr0vK5dphlEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658026612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q52A97cJBFSjZ7BgEOvHQCCvuAKOPZifUGXkr6E6O2A=;
	b=k+XCS27T6zakQgVKXQ+Ex6PBdl+Hbm2NmQMwLcSc5WtXmcXouDgI0VH8zXwmVZia
	Uu35NGsb7cVKiJnLA0/ZAY6RgMXbe49uY6ZujOEIaAqHTkE2DqntIo74tvkx3WDMQLU
	Y2EidObbhP0/jPdua+TgCrC/A76iwm9XtVQx6Vu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a165666-f289e2cf-a08a-4cc2-9d13-782897062da9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5df371d86ed80f77f52e30177ac79fda920ac2598fdb650aeb5589fe5756785
Date: Sun, 17 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658026612
