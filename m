Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C813C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658175412;
	h=To:Subject:From:Message-Id:Date;
	bh=6G+BRMfA5YkB1HSw2qLVoRgnrcuCy29JUQQA/mtcItE=;
	b=C0CbFso71pWDs6MBJukGYQ6DBNuoNOd5Qe4K4qOyf1GwltxyIU+w7ew0qdcdHoev
	kYJW/7Q1pf9EevYe83EfL7cZ+eTwm9JjUVN5tc4tUvdBPfcHe/zcQPbKrI106e+A9T2
	DgY62W2l+kWMFZkdUtKapYEMCMu0n0CJLP2UpZP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658175412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6G+BRMfA5YkB1HSw2qLVoRgnrcuCy29JUQQA/mtcItE=;
	b=A4wikHN9nTvMGrDbg+/od0R/7C3OexYbLnKcpNcwVm3+MVhuthhNLlNZQRnYrQla
	4y7ogpbh+G7Tb12CMMEpnV+RPsp1n6Jw0CjvqXl8GJGlH3rXa8llRc24+gCRUByHCK4
	+fgoF/z1sC7Ih6FQWs2rZO0NTwfjIaXjN7x9khD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212f4d888-c52713e7-bfcc-4176-b81e-a9926c32957e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b12cdd0a67d9d7c472ffaa6396137cf8f5b7e04a337bd9db2be4b8e7c918fe14
Date: Mon, 18 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658175412
