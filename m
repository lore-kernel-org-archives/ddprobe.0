Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635D02595
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660425652;
	h=To:Subject:From:Message-Id:Date;
	bh=yXQN3685Twr/oVit0cr41IXWQ8NkEEFt1HGyWuzSGNM=;
	b=lekX3gMwWnPuCof4e+1EaVaRpRlwLAdFCFF2fyen61zCPDkyJ8ghHOK0bKBgoHw3
	kpy3seJZKrEQv25oqpZjNNahkovbDaRa98JZ4DZvUb12xSO8z8xh+LMVuuoXlipWUe1
	ja4OY8QdTj0vyDJ+n+730io4NajV4cd+qN+7tUTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660425652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXQN3685Twr/oVit0cr41IXWQ8NkEEFt1HGyWuzSGNM=;
	b=VBTqWedhqEHsOzBkwoBNzrrMVv9qWjcQ92EnWtalZCjr7aGSZQyQtAkqpEIckQKh
	CaN0y8tLFLlCsvugz1hcsa1KRvDwFgd+Ut0W3BoeWoaGGUyuuWiP4IqONQ+FdF6qUzq
	1r2NPM1kdygeyIuZPPHsMxqKmF+Tr5eYSF53A2U4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829914c9ad-3ce3a11f-5c2b-4dd1-b3e5-eb0e2e88a2d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96cccdefcaeaf3ef01962c359da21e4f553b8202af3efbbbbc4db208f806593b
Date: Sat, 13 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660425652
