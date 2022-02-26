Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1BF369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645856785;
	h=To:Subject:From:Message-Id:Date;
	bh=pS5QDxIBr3xwWLWIlt5LV3yHGYp/SK9guAqAqmSpSl8=;
	b=iDLlGjI1IO8AVpB76a0zqlbAYbjpkgaXgmWlOyrS00VCqqyoM+wq/rxQzdXVzfn+
	AOd6IhdRpDKcTpsLU7AKL0hbr4eA/ZgbUp7rmc/y23h/9Viotp3t6h9xauREiaqbmb4
	+7HPYUxOd3r1qeSUYv0Cel+QVywqdbu8aLJlw3jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645856785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pS5QDxIBr3xwWLWIlt5LV3yHGYp/SK9guAqAqmSpSl8=;
	b=lope5GUY83YyIs/+c5c/j1UnddrEPr0lpXVkH9P2zGZFAjN8SwQH5Oin7X44MBmt
	bVnuEzXb1pK+ofG+UggcjQHTSGbZuv4pwbMSPcTQCn4mg4Qr/S3WaWzjlguV+izSxSh
	5EFcdkisNgMn79yqpZsmJ0X78RTYA2uSP3RwOlq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34b5826f-cfd05c1f-d9a4-40c2-9792-72f5dda6fb8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4a268fba0daff47b18440ed312a0701d770448faaae3fd65a14b67f715d8166
Date: Sat, 26 Feb 2022 06:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645856784
