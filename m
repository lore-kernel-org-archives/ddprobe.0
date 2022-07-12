Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0623FC7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657632412;
	h=To:Subject:From:Message-Id:Date;
	bh=kmfL7p7JjhBcC/8+0xMCAiDWD8zsiMLmxX1B0jpK0/Q=;
	b=gwyiQaxZKEICP2uA1KOiieiCeTBnfDWQXV53Rn+3AF0x9fx4I0hSAselK60W9yCW
	ukn5JYoxCWm1JwflwWs0WSXRU5W+r+AUAXpdK3LhL8d4hjwpikbXhl/l0r5aBIqa/e6
	RY5qkVdaVelow6HF8MFv0Ap6foi3C4PF9bZ0V4dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657632412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmfL7p7JjhBcC/8+0xMCAiDWD8zsiMLmxX1B0jpK0/Q=;
	b=Jfli+4HyLogjTaeevVvwIcz1ghIO1L60urz7Ei9tJkVkg8cACGtfHakWATk+edYz
	8717UeWUDedKXfw/91hllUwNsJWV4HW7kWafME8GCtkqg08rUw2zpmYKgU7mzGO0749
	jhc/yQ3J50KjJG+RkR3k9h6qoQ3yq/GG2TWEGkCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f297526d-6a4d9153-3aec-4264-8b96-bff8aa7ee89c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a627a6223d96f906cee2dcfab8d5caa32ac6954afb8a9354c95f7975f8870e86
Date: Tue, 12 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657632412
