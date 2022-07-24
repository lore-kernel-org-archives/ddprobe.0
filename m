Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222C07E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658621812;
	h=To:Subject:From:Message-Id:Date;
	bh=nnv6iN3uRD/ZkNUkBKyLvaM11448AE1g0zsasbfqDVY=;
	b=lcxg+omtwf+diXObZ/04doWtnfiSs0aaikEr/LHA8RIxdHn7kCkXfiUJnKejzewH
	MlecsboGpj2imWqhBQXi3WzGAZfn4m3eoREZ7MHtY9W1hjfPAsCjsOex/UyQV2G1oow
	vcZ3p17rU3IDjoyDaYtY1KG1AQbsSu5MunKcI+UE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658621812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnv6iN3uRD/ZkNUkBKyLvaM11448AE1g0zsasbfqDVY=;
	b=XOQjDJhMx0JxyLK3MW6gkJ6Ve0j2Hr/aJUD2kz/ly1/DuzdDkbpFNmcc6xo050GV
	xa5nspWERu9wv6B4FKL3eeHuWAW83OPOWq/I3tP/BdmbtqWzgmCX2Zq7bZR3vfAGrrh
	zcUgzO+j/XA148NBu/YBuoqnypsSzLTZQRh6lcEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d905e76-0459dc66-2e14-4268-a557-c4c40112c7d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ecf6a2a992c57f65c406f949b580657c9600f1de53e8c1d822faf1f49da28c4
Date: Sun, 24 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658621812
