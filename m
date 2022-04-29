Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2147B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651238698;
	h=To:Subject:From:Message-Id:Date;
	bh=UMyxBbwauSprQ3BezmC+/tnRX2gk+zt/t3t7FsRxZhU=;
	b=g3DaZvCLEpzMCRFqI+qWctOSM7qM9x1pDVx8Efv6G1WKmnhlMRqPKeHinS6Nz4gY
	NE92ci/udpAmJZvTrQWyAaUIqbAuBkEuN5hEyzWuMvhczGzR7kX0Zr+1Ge6IvVBMvcD
	lA+0Lf1TX2RyQbhkfhVyAtJ9WVse6s1G5+Kgawxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651238698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UMyxBbwauSprQ3BezmC+/tnRX2gk+zt/t3t7FsRxZhU=;
	b=dF46Kzugdq7O8QL6s84bEU8y9IesRK7ykMO4i9rLNr7JWBxPSOnU06BEHI1/tjVC
	4NOjMb8pC01QUx7gzqSi0MEj64ZKkIbFSn6AyOCWDVX4OKmhHG/DEToWPxCLKZrfmCN
	Sq9lvClNfn6UgCpMX5kBcysW8wEU/tUf3OtODOcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180757efd37-6071606f-d3c9-431e-8da2-da34f65c8084-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5a802be3c8ad9a4075b516dee7cf3f34a20a68bbc7eb4b11ec733e20a19785a
Date: Fri, 29 Apr 2022 13:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651238698
