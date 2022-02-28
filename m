Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E10E48B7
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646044884;
	h=To:Subject:From:Message-Id:Date;
	bh=Hv9g2bomUI1k5N8wnYU+OCU2miJ8fnME8dS9bFtGCoc=;
	b=mW5c1+t9kl7xUJ2wMK6XEU6Pltyvq2eeSdV9UO3JsyY2bal5r55zYIgYUt0six2F
	kf+XPyM+ACbnPEr1ZOZrhNaRZaOlgn+OmwbuE0TV26tEljCY3mZ83Yk9q2LCq4gU4W2
	LCgHi9nqdmpD+LkdHbLlp42kv6pdwVZLKaMI5IAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646044884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hv9g2bomUI1k5N8wnYU+OCU2miJ8fnME8dS9bFtGCoc=;
	b=lAkOgTFZ0INpGJdlHrUfXtsEFiuK1n5B55MSXasjDlJhSFhbu+wEVKwgBllBhCSZ
	OUba+JU7tVfATsDUeXL6HOJRXsypn9DhQrN0GaIiOru7K5iYJT8YbegeBH5Ipqyhnz4
	Rt91FFiQp17J1RkgBYpxpWH09LshWQI3RiYtw9dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3febaefe-70b45acb-c029-40ef-8c7d-f820d74ddfcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b4ba6d7ae2e15bc724a670ca35770941716860f3e9bb54f4cf8c2eddb22aa4
Date: Mon, 28 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646044884
