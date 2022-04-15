Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97DD7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 20:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650055738;
	h=To:Subject:From:Message-Id:Date;
	bh=bZSiVoz5Kjv9jLUEbY86th6a1EfE+cz9+6pMByzSXU0=;
	b=EpJWZ4bdYAwqwYWoF23QB2xdMGQr+Z9o/rUr+OWRiIACOoxIavf0nIrhOyqZZnTS
	h9zHroMuvQJUU6pj+yu0MjIcWERoIw6PzKl3ZP8z4Tn5Bnfv3T6Z/ZAB5kKY+1tKnwn
	lFknt9UTBO1g9uD8f+e77vu9RN27MZWexC41+jVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650055738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bZSiVoz5Kjv9jLUEbY86th6a1EfE+cz9+6pMByzSXU0=;
	b=MOUMGiiE2GMcHLQKJ7BE7GfUlSCrr/z9SyLrepO+u2pjusGCzoJyhk+0yJ5agiNa
	tMdulGVp5SgmfjHFGNnPLDvuCtn10oJ9tutD1gb7MlNYSICuCkXdfgfOtlv5zon8vDw
	cecpdhSoOgMLY5QYeJVEYvvTL6UTyEZoQ9p/CE7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802efc73d8-6ed74ce2-d887-432e-aa79-dcf30e130ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f6b87e5348b75f937916f5594ff9be2940cbf8bcae1e2b8375555677119bde1
Date: Fri, 15 Apr 2022 20:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650055738
