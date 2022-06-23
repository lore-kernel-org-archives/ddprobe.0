Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DD11FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656000412;
	h=To:Subject:From:Message-Id:Date;
	bh=KdiuA5KcCORhWBMOZCSfkzbB/GcaVxXs6omcOhU6WQs=;
	b=aLRrZrfR7h5ruvL4XmAdhuQHGIw3TUslb6MXMfvi4k1WWeP1e2sB3GZSOmyA7/KA
	PzfSiS6DpTKMPRLOqod1DY/QSRSabw2QpudBnvTuK9h9BkXp0lupf3rohsabO0yP68A
	Yq42EOSF9VK1auEcCWyLsr/dP3u9G7GrgkgV+ICc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656000412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KdiuA5KcCORhWBMOZCSfkzbB/GcaVxXs6omcOhU6WQs=;
	b=Ozrm9MgJr1u9OrfdM7ChotACnv3vu92rIltU7rr9AnCArj7qZvCs07cU4TQq3SHF
	owa0u4AG4RtfwotWc6KyOnVlVXn3zljbeo5m/Yu1Mgp/4w/lXOPy3DM89l2FFKjpjgZ
	7EIgFEd9T80JPCYdLJd1qzgNuXb+77CIZelKFzT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819150faaa-2171ab29-22c1-403a-8a1d-860d033b5928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23f6b701b82ec6825fc843c511986ffd369fda1afe85e87fb15f5bcf65ff0462
Date: Thu, 23 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656000412
