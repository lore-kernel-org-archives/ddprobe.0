Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CC71867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660618252;
	h=To:Subject:From:Message-Id:Date;
	bh=mgSa1V5Xyh7ooCY2tDMzyG4fQ1lwpzGV9pZLZlMhkYU=;
	b=ZgLZH4r9dD5mCJiWJKA9n5PrhlfdyqLBjPQRkQXKeCw7P+aFt4BEtzya963RCXGk
	dUD38Jtdpma3pLnPdTGjrqCXIpjNwLSvIest6RuvkA3ogglH2O7CT4zjmSX/SnDdila
	h1CPe/Ywi+g4kn4EOlK/4Y6yyryYUW87+Zl9ZwvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660618252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mgSa1V5Xyh7ooCY2tDMzyG4fQ1lwpzGV9pZLZlMhkYU=;
	b=H2hkFsYBcY2wujj4bsMEcUJ9t+o6BQ7Dh6+cEKGVd9o0sEOm3lOk4A0hkv3A41JP
	S5nFXy2cWrr/uIYdma2V/Qfr0KtEd8+AfNZb6nto+9NffKfLRuCmKyXx/y+XN4Jww9R
	+F8C2M0Hlvnyt1gGv8x/kJoPvykb4MlOatiHX4l0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a48fa11d-362396eb-b5f1-4139-b1b8-f8c1554631de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e12ff40a0f5d5213723913647acad5fe7cbf1bba11da20aab02302e25f79256
Date: Tue, 16 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660618252
