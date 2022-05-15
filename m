Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB2D7A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 13:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652620619;
	h=To:Subject:From:Message-Id:Date;
	bh=BLKPPKjcEAmkL9ixb8mp1pKswSNYeLbNB1CXn/II1Tk=;
	b=hs5wayQauNTORMvfKFx1KWZ8hPy35WiYs0WmZ6t2CqmdftFH/hNwXzefpYOKPFjo
	VXIFc6GYPS7a7bFhdIgdGW5uywq7HDHzBjj0cYqUBGXwOokGnHk6vm5RriQ5Q+jG+Jw
	38OMZGKeRkpkpwQxqCP+bjjgQOX3wgbKcKzqyrZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652620619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BLKPPKjcEAmkL9ixb8mp1pKswSNYeLbNB1CXn/II1Tk=;
	b=ewV34Bs8rYCjmC9fSP4U0Kfg5OJOUSfMCiXoWKqmX223yNNK8fv9jNZ5O9s/NMQT
	WazDYHB9s7PVVIgGhvVdkokBj4aQ0Aoz2ZtYQwfIuCquvaDmob1dR2YR3+DtlFIg19l
	65ft9hkjgBAyCVjFqN4w7zn4tCNTHNa2HqJHlFmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7dd6e24-9ead6511-b973-4e29-aada-44d004803317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51a021880390f9585dd04cdbb9647ef1e1d45da017b11dcfafb3afda488f2627
Date: Sun, 15 May 2022 13:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652620619
