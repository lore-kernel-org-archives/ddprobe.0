Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398692F2E
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659077452;
	h=To:Subject:From:Message-Id:Date;
	bh=M2js0zTpmy465r+GRjwta0g1sMdSVonp/ZcXnNfJRhs=;
	b=GRXzrf2XznOk9/3yBgd0BJBINKdHtjkZD5qOlGiPK+S1MnjU/5kdhKHxWEbSILwY
	AdN1r4H4OiFrAIowRPuYgyAuidVzDPmuGuQL2TKDfzZv18QpQMVPzPgafofqLkk1ibk
	zgIHao0+HyBHRxip955dYUYZEvmVDK76uUCTNewk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659077452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M2js0zTpmy465r+GRjwta0g1sMdSVonp/ZcXnNfJRhs=;
	b=DRzStS6P7P7ZQXfDAyx4/mDUCXgCr/9euoq5rRyjtmOUzSr9ki2IVmpAtQPytiYF
	NMKYBbVr9uqaw7ZKuiZKYL24Su9UwkWa4UXN1NpandSa0pFGud8S4l7gisdJM3L6OMf
	4TmbgMIknkXXXU9txKT9NZuq2Ffz0021Xjtw/kNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248b8e2f2-021e3b9a-fd23-4fc9-99e2-91da25092b3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fa1a65c7b5bc128b44db9f0c5d9a26af47f61ef693fc3362e75baa7ce84cc72
Date: Fri, 29 Jul 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659077452
