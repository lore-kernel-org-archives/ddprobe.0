Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C253207
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 20:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652299739;
	h=To:Subject:From:Message-Id:Date;
	bh=MuUcqQ06CYzs6nx/rvnWeJrJEu28jVKVFiRLEPNTm30=;
	b=btE2fd7ijPa19kATmi6r4XwnBZbUyKt9HOrjXCG8+5V589Un6KYnDA+SOp7QqDJJ
	Gt+u09LXIGCLVWl2HRSxL5EuVnOrPRE+R1R0kvYNM/8sXSSKRzYckz0nL7U8TU8BofN
	4Rvij5Bg4tP+gaxqgu8dDz9l4BcIQtMwDWlAc3wQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652299739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MuUcqQ06CYzs6nx/rvnWeJrJEu28jVKVFiRLEPNTm30=;
	b=HgNyIdFGlso0ZmTlqJRYZ9qLTDp9wB1paS6NmdPC57HgJsTqLcAyaHFTtO7M1oHJ
	0RS4HvXzcQ/0P/I3YANkwseK38UcJDgT1Dks35ARcX49hegXroR84DXm5bBbj7LF6nx
	bhoePe55PIK3K0BFEFY4wqTe+zGgLnYVhVUuSsNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4bd30ce-30917fbe-5c1a-46fa-be1e-f8282d2cc655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eef0974c1d8befea14e9803039e31f5d5af4566a4eedc52be8fd7f85c43f458
Date: Wed, 11 May 2022 20:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652299739
