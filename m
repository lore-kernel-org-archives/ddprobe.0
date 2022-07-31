Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43989443D
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659291052;
	h=To:Subject:From:Message-Id:Date;
	bh=5FNBHBH7SJX/s/ofu3K339U2/eQnjxt3ALLcRQS+oNo=;
	b=XGZbceP+mFD7toJd4Dt64Q8101/5A6+EYgtMCqmCCui69mn6mz/jPsomGa2TjQN3
	uQbnfsVeQAx0P/InbiXCh6fZu5ygbHjz2wBk6rp0gpF2rRTXKoXgzVdMUXe4vyxsQmx
	lR1UQhPfN2t6NpocY3elml8Ld9r+9l8vRIMfdpoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659291052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5FNBHBH7SJX/s/ofu3K339U2/eQnjxt3ALLcRQS+oNo=;
	b=GfFMDE52cNi6GNO6Xye84K+X+tihsjUSaXGNQ47vm6cHtjbP9fCvlsiPDHulk4ja
	Cz/VBi49Bi1Q/oUgFQL2bT0P1/dC4rSbEzxYL+sMewW1H/CvneXoS1GhWH9XpxwOUvw
	QyCdBDbXZi5z2UJReoSsNgkrfQKV0uJWh24EmivI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182557429fb-e2322e4d-46bd-43a8-a865-8d80f7248df0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 027df3e096e5a88c6764d6d4b903033daa7ca0c557042df5903de028ba7606af
Date: Sun, 31 Jul 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659291052
