Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94A3C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659220252;
	h=To:Subject:From:Message-Id:Date;
	bh=i/+hVnH7uUfIxBnuuULI62pUdmWb96g9qT9IeYce6I4=;
	b=ZURYEXZm4Ip3bM1O+2g33pk2+wEd2rPpQMpzndUqLGq6WJf9/M/vUKxvuBoO2pem
	cHdQa2z6+nOZ1ALGRMsptlJP5IYABNyNjz8PoBkrRXGf/XIlRWa0wqPu7l4ehERpbkz
	79MAn606eKSMyM/d/yz0/UKJwo9gr6HBp6bPgnk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659220252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i/+hVnH7uUfIxBnuuULI62pUdmWb96g9qT9IeYce6I4=;
	b=cwi0XfjAvp0V5DZKBksdv4ixE7oChA0MgAVaM9RF/kvYR/RMc7+HCMuWCT/RMkgW
	UXCrEZE7Pr11it4QhqvP0uFsLLz1FVcDDzFzwPSi1oxniegv5kb9ORoX8IZCLu4H2RF
	zBWVCuEFTvkRPZV9ezda4ZU3cDdF0/eWdNChSo54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182513bd79d-28e75c39-63d1-40ad-938f-487d4f31e8a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 081ca098c5b132a9027f950cf386989098aa42dc35fdd184364773398cb77cbc
Date: Sat, 30 Jul 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659220252
