Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E517F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 04:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655438699;
	h=To:Subject:From:Message-Id:Date;
	bh=pNdF+iCz/eimiSQlISBFfANt36gAlCtVcRfxwiKqZv0=;
	b=lZyuDf9YM+3wEo30PnBojkkqDWUe8zFA+z7YBjpwgY9JDzzo5zYvSEOVkdReDWe4
	X2n4YqQowIQZC4hCr0Y/9oLniqVhrOyt+S94RL0SPg91XDdJIf9oWtQ7n7Ahw+RnMoF
	+aBkXx9Dd4B05Bj8b7UZYJibh+z6Pcu5z5U8Vxeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655438699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pNdF+iCz/eimiSQlISBFfANt36gAlCtVcRfxwiKqZv0=;
	b=CNzogW+nsOQUka2o2+wZmlKq4QQeHQ1mOTm6lQn19kue6qtMf2ouo5jLy0BCnB5o
	QaZqjvxN0kUvwts/Bm9Pyo8Ss4M58bdkhp86x/n8ldI4jCFEEpeSKmH5H9EXlG9/LOq
	cekpRydwVoHQKnju9K+LVddGYzJhGVZ8aSjPSLSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816fd5eaf7-8399a87c-236a-4621-a862-23ebf5d1aef3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87676993bc54901edebcbe7ea1038a0b464abcd38597ce32c8cbba0bbef1f09a
Date: Fri, 17 Jun 2022 04:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655438699
