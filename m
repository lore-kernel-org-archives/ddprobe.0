Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594474681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657727812;
	h=To:Subject:From:Message-Id:Date;
	bh=+hP3ilIGxZKrc+VUBYB7KFfNlfOcnu3ZNOpKdExNDy4=;
	b=P8Q3Oru8j6NI0otBI9iyclcwHq8uGLABYzrY/fzPOVePpX+sKUc8R4f8wGxWqQSi
	Spl+D9gofNvQZKRGFlHXocM0pvQgLaw6nQbtMLz3465RKkZXb/cBYgZJ9H3bUsnMf25
	BX5c8rHbCBrC7Ue25HayI2HeAQqgaOSdDCcVOuWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657727812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hP3ilIGxZKrc+VUBYB7KFfNlfOcnu3ZNOpKdExNDy4=;
	b=OBcDH5uW/6l8pRJeqCmbFnyagaVdZZWh6xw42Nc788rZWVBuEWjGSfHGuSfR7yNn
	8wGdxC1tpDLWqR+4aU+6dbXzDBTYGYbsh3jnkI7BS/qWtI/BIDBjqUr3ZwzMyZLVZQU
	kHjHj0Mj/x3Eb0jfDVxwTcyu0nLNf4ciE8c6kiSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f84702d9-459f49e0-a0b0-4769-aff3-a5a65708970c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87a4071bd2981484434e107143fc7956a670e5ac3131106902c8097dac506394
Date: Wed, 13 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657727812
