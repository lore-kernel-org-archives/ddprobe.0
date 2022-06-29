Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF4F7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656468412;
	h=To:Subject:From:Message-Id:Date;
	bh=5OgeqAGVom39HOLOJvlSiU4LhhAtOo2OykRaqfMFy8A=;
	b=Sg91d/MCLswEo6zXVLHB+eAsIvtgFuUGzXfIKegJJ0pvPSjTlSoalFzYyQvoXnqy
	WSG2x054xXWmEy4Ku7P5cjCs7ULsA/r/2eH3NmaJI6aSJq0p+6pD8cmISCd34ArEyF5
	Tw3/Sr855pBvrmS+SJbBr27MxoPCc4T1LfCiN33Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656468412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5OgeqAGVom39HOLOJvlSiU4LhhAtOo2OykRaqfMFy8A=;
	b=AnAbBNiV/F4fWbwDy1nEbcFNGAgRgY4FBSJnWdAINi+6Y3s3Gy+3m+njESXk9LdU
	rM5VFko5L+47YefoUIY+JNOwj2qsP9HmqrVHBk4np9Ycub57HF8WUhSPtBC5YmzEVSw
	a3fdlaXWgnljwmvq0FZ1HIjv7i8I36z5zjRPdsUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad3617b1-da746d50-60d5-4c34-bc6c-61bd59e5dc54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f82f4f0f0ac0a24066d4335b4a4294351cfef22d9e98bc2760cbf113f444b37b
Date: Wed, 29 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656468412
