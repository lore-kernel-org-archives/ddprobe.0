Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3297F7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648083898;
	h=To:Subject:From:Message-Id:Date;
	bh=G4FfQ+5RyWmOb5vHWLWZW39egqHtIe1KWzYPco03LV4=;
	b=g8BxqgYAQJ4DkLMoN4d8t7NO9NW/qSEZYk0Jw74YLXdwFUfPRG+ykqEI9Z5P0YYK
	Yi1g86IBk9a7OxeZ6tjDqPE16rLygbZhGBOuWbg0F6m/0gZHH3cnFgQDMSJlZ4f+B/C
	AkhN9fd+a3OJURSIvWlvp45q+hCMzLTTVwHPfucg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648083898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G4FfQ+5RyWmOb5vHWLWZW39egqHtIe1KWzYPco03LV4=;
	b=XW0WIV9G2zsMEvJsqnMKn9To6vIsDre105Us9/ayx/iYMwq2FwXXjxoYqngXZ1ST
	3FICoCfrTBjimOosTIM36Tv/+7ujivVcDcpIT8dCLIbs7cO0/LJ7960LwSqZnJptgSX
	NMVXMog+1W+NeicOeJ1Sr0WgxF+iDup55QkZJN4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9748f99-f5611011-3105-4531-90de-ea58997f4f2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27653dd3b4aa98314faade48dc2ff0f4987783054bffa04456c314c2f0a7143b
Date: Thu, 24 Mar 2022 01:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648083898
