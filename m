Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0B7A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657697212;
	h=To:Subject:From:Message-Id:Date;
	bh=/wJIOnAtYK/RxT4ewkImyVdLWtFFdPpu7Bii9TCRXKk=;
	b=CWCr7Y39u1rbYs1oWZcn0MW0VaPKxHh5TgPMC2dwzYfI5yyuCgCvBHRD1Mm9TqJK
	B1bNugEa1gZozPGOnixXz5WmmmLFpagc0KkzhCIeF8eTFXaRJ0dwzuHdWDvRMupwKkk
	1vmLpV5ZXj5o6RePuDoyKdUqAaJ+ewsrl0a4qYz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657697212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/wJIOnAtYK/RxT4ewkImyVdLWtFFdPpu7Bii9TCRXKk=;
	b=IodbnvPM3UR9TtJqzWFbDoRdn5zKHE3PkLp772PFifwv5pspTHVo13NDa0dEeqsU
	ibGXtbpAyVr8yRfhOiNWppIhuoq1dNrwf1DTaY3jfW86DJvH1m1sBfSIz0iPg/8qYPP
	4Vie8R6jPCFna/axQg4YLsyx5tdlMqAyoGkIDaM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6741781-86966b5a-df60-40c6-882a-ca88dec7a91e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e9f5d25869d60d88ffd9065e9d2ef2b2a5ad64a86cc8dd21db890b281f9a3af
Date: Wed, 13 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657697212
