Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A47A2C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644859247;
	h=To:Subject:From:Message-Id:Date;
	bh=PNaYyfNkqCcDy5vxJSBVdC+Vhbzkgu9rxEYNfkxfMKI=;
	b=Wb2aT9sZe/ggfPqJLvtBMFC95e6AEPy3JFr8zVbSp1YxQo9IucdeclCRzPYffZvG
	oPoVVbu7dEMUlWgpMahJgYLSHu6eouvC4xcif8SshbWqBPknu39dXxV2IJNzRPRzYAZ
	4JWJD9l/84DOd4TXBbJOr5a5iU4n094PYwVrywrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644859247;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNaYyfNkqCcDy5vxJSBVdC+Vhbzkgu9rxEYNfkxfMKI=;
	b=IehEBBKKjCPrMo9u2ee51CZhIKsuhoLtJ79D6Lbb08d7HkwkAQYs1xCoJaD6PC1Y
	/ZhAHG1KcLVqL8/iHYH8/YLvNIxaizCB0u707Lhnr4q+ueASp0B70M22sRY2qgd25sH
	GaqBQbO7vYXf0Gm2hoIeK5JhV9713wnxy1KS1TFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9404933-cafda3b1-8ea1-408b-b613-5fc48ae25848-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a26140d52d9bdf0c14c8e576cf08fbe3dd29a7343615d4c67332b18724c62029
Date: Mon, 14 Feb 2022 17:20:46 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644859246
