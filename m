Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F227F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659468052;
	h=To:Subject:From:Message-Id:Date;
	bh=OL/Lp95KQV/yQmZIGSzNer9hx0tIrgC7elItBkLlmQA=;
	b=ITSJEBPyvDq/y+7CiDC3qEfDj2Dfp0OmpepjGaxvwvaI+7c9wTyrWVx/tfHNBW8c
	w+N7BM2rO+mVF2F2r3QJ5TeNB3wCqIllCuCEfhdveg0SKphuEtJqbot8aqG6XSEX79p
	zzzw0tySLky9teAJbkagsk4lsMhOV62EHYOwyGHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659468052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OL/Lp95KQV/yQmZIGSzNer9hx0tIrgC7elItBkLlmQA=;
	b=h7QJLRIXzuqLlMqNBVWGoc9bJLRDJo0LkjJvzcrqk1fBgVjcEgNgIP8lyPSVKS/J
	WPegKqZkR+P88yhfIXRhaEIgFdAaBMRe3ouH3qXYQn8Hv1K8j7h7MBr6k7a6v6OqwO3
	5s9UQNOyMC+IzTD+qFS+1JwuCxKdXQFVOdgv9b0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826000f876-a56e43f5-c123-4b56-a1c5-e88c716e71e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e20d61a009a168895e8d2ffe97f888994d90a992608bca95e19f2c1c4afe49d
Date: Tue, 2 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659468052
