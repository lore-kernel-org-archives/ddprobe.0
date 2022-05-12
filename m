Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8543FF1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 23:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652399099;
	h=To:Subject:From:Message-Id:Date;
	bh=qgTXtIoIljqUGHLd7phFXBmgUzxDnimvlZUxtvWkkXw=;
	b=IybxWy9V9WJesne7G95r3Uz0vso1ul2KnAEkH9vQTNz0zZ+me5RemwY6nQVDA5yy
	S5iILISqF7BBsX0ICmxr0s4+qFvlq9SplEvkYZkvK7cA0pO8Kf+U9db8WHr4maWfyN9
	wk5i6uH1yS8SvHlkz/yeOdYybsmGgYWLbMA6Bx5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652399099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgTXtIoIljqUGHLd7phFXBmgUzxDnimvlZUxtvWkkXw=;
	b=ACsV7whWvuB7AUG8IJkz9vGzKr9QtFf6qKD/3qAVkMK4euG3NF5poWQrHfnKfF+O
	Tb+1VAnskzJ+JMD/wSlissoZabSw7NpDeXz4DBaqxuJFLAiyKqIkJaNsU0VUv3eBQsk
	Gtw0Ic4ujQKFS67lWeSmsoJYZ3f6oe+ptFNuiRcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180baa94d63-542ca4ae-48ab-4c7f-9cb0-13feacc3b0ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3b3b2f63e09dc826cbe84d14db14cba45c56c6cb74a4cbbe6147b009c7c4e7
Date: Thu, 12 May 2022 23:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652399099
