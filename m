Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0697A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657855612;
	h=To:Subject:From:Message-Id:Date;
	bh=18kvdOMisypb7ssH+cU62/GWa0wRHaHmEBtNVp21QpE=;
	b=c+DOi7lPb/oco/zA+evw6KeRFXYZ+Ks1TaaBjsThX3aQK//KKOhLNtha9DxwPhK+
	DwDFQlAWHHNE9M8lD4EFQjJm7gIA3vSVV746jM9G6j6E5YLZA1jlnS6WJJ5Z9gkcAjg
	QPqbS725v2tQ9RsBmqJ5n44/9nQ4RuBXV584uTsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657855612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=18kvdOMisypb7ssH+cU62/GWa0wRHaHmEBtNVp21QpE=;
	b=PtTZ5X7gVtyAdMJ3T3cZ1x7SLXfSWn0yg4RXaiNafMNkYPA206P7JKF1Ke4arjtQ
	HSICBOa1rKuTLg3SX8kLIpXBp93jr8t4TPqqumVQQAcQr+BqIAC2AFD7bupfong0EHs
	qNBHcb7klajW+u6Z5Vn7BR0c+IhrBkwxnbzb89Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffe5154b-2816f11e-92be-4b80-a827-6af62a95e491-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 021c57f81b940d046c72eea107d90253a028458dbb76edf02176fe50e2c3e425
Date: Fri, 15 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657855612
