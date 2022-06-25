Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9E97A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656144412;
	h=To:Subject:From:Message-Id:Date;
	bh=XylgBuidYIgmKP7rNQPceTY5DFV5UxwMKG1u8GWdxaY=;
	b=CagggjeoeyDhUHS3JX/vJn3qnZEozwuGHFEwldh+8aHpbhhFYdHkM7plJWZ1o+zf
	aL/UMy10uouhp0bG52BM2druoUxvC46d99bRS/79A54uv3+EVeQ66TtIFhiS0bBgqVb
	2bfx5coGne/XYn0fvxd8pcmwYc7M9NdKEw9zPjTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656144412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XylgBuidYIgmKP7rNQPceTY5DFV5UxwMKG1u8GWdxaY=;
	b=eK9vPJv3v+GfFZFJJXu2cFsmwiP/wGiwNedy+fdf1Ix4bJlDa/rEdYgiB+2/+YYt
	935DDAvLKKRYErvHakfPjC5EH2jdH2BheHxyfqslG1jFE2hsWh84UZU9hQwd2AUnek7
	FnQFr6l0V8XRUzY7Vd+7IsZFbGJ3Xh1Cc+j4mqt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199e63e95-4dd1ce68-05ce-4794-9341-69bfc9322466-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe90010294839b4c6b62db5250d3eb3e599cb98d79248a9d77361982de98004
Date: Sat, 25 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656144412
