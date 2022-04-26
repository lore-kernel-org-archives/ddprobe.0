Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE72560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 16:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650990538;
	h=To:Subject:From:Message-Id:Date;
	bh=wJ5FJy2B7g+/kL0dcc0pAS+nf/UcW+BTc2mbfWi5R28=;
	b=bOGNaIOj0agA3OYNxLBmOG9uXBBq3x367CEYQZdtI3iWbBuP0WfL6w/DeqhbgUNy
	Sz7Miz2JL3Gbxn2MFKBua/HJS5JX4kY4zjqM+H00NjOqCNyjnxHuOCSaRu7TfoI49g5
	yJ+dWqLsbTHSI6uEnCzP8k0/D/7P9EVaGpWg6Ezw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650990538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJ5FJy2B7g+/kL0dcc0pAS+nf/UcW+BTc2mbfWi5R28=;
	b=KcfTLgk26GO25ky/+CA1d15hHSxQnuYp3wE8owYyKjS4eOnvC5YI+i5ojuNsqF1p
	L5RSGB5acH2lrVBhANqYoBENFokwlLyEdDbsvSiP5O6c5igZA2z3RfsmydM5OBWghYp
	hpEib+ZDkKHhawSTWB2fn8trWBhb1aE0SjBz3yZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066b45df7-b7790d32-a413-4e5d-90be-2ce86fd49dca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa0c44056ba03aea0a03787927a483d74eaad9e5ccdbe7c992401072abc9bf6a
Date: Tue, 26 Apr 2022 16:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650990538
