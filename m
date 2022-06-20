Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165F37E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 13:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655731739;
	h=To:Subject:From:Message-Id:Date;
	bh=SIcORfCEh16gkWDfZQfeDLDxIMOz9uvq+e3h43rwTNs=;
	b=ZBHR/I+T8g9EHp2R4D68OWmD+8MHeSuy81WJ/KGdNFn52x7tGGuWS4Xaozvu0IUX
	CW96Oxerxu4lliLvbfnYhM5durfjxqEt160288v/dOtSGbS8CC/2rJdD73wk0BIVvaH
	DuQqNK1lGrbC1I5zfElxsHeqMXVQiHQWVYosLfBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655731739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SIcORfCEh16gkWDfZQfeDLDxIMOz9uvq+e3h43rwTNs=;
	b=RwD2P5VNn1aSdHkJ8W0i0WBy9hcZNxcgLRkGiBliYxgelnxZFPCu0dW9rVzjKQ88
	bjZ8m6oMjEqW6F5lMOfGx6/wbVaqW4y+zZNIqCpTNhJHA28qNHx2J8oYa1IgE6avv8U
	mpdnsT9MTS2E5XebH2g8HXDDrcT2zeU6KpD6LGUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181814d5a88-8988a1cf-0615-4f58-9bda-28d94efdd79e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b77277b41a95f4f7b6d2c7235a475ba5e3ce979f45ef143958d27852ecfb344
Date: Mon, 20 Jun 2022 13:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655731739
