Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9DF4602
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645128685;
	h=To:Subject:From:Message-Id:Date;
	bh=oiJgpMbNp9eaxKXhPaPOqEcnXsfZQqJOYsOT59spOlU=;
	b=ABjVF9D9dmiwztigmX73+1vDbpgrVnBtsr13lrgIdc+DYaDsuvaKUNiccG2/wL29
	RNedunXbGizsBEFy3cTyh2lOMXIpu2w17fh3VRv241ZadeNGhBMRH6NOtRylIOUIfLz
	LIfEvYmhrhwR0Qt46YmNvxKyAYGbbM1CMxDvhnQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645128685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oiJgpMbNp9eaxKXhPaPOqEcnXsfZQqJOYsOT59spOlU=;
	b=RD2YfIlhkhd9zHIxrUwux5ttrLRzdTFZVAt2RwioZpYsj+zUcgtTdUqvzaY5eNF9
	DQDaYCz+dfoFzuBDEJpYu/woVIMYuuVc0jU4vwoVdgfPkvYUV6DsBwD4vljzF4CVDGt
	RDgmvvjTwjYu0iDc+cR8NTomSbU/Od+Ct6dDvH9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f094f954f-63c0ab6f-338c-4c85-9e74-a34ad746f50e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ed3c1463d27dada3060c277aeec893165bcbcc45f2026598cba959ee6a99f92
Date: Thu, 17 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645128684
