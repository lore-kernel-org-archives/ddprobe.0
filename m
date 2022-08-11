Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CED2CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660235453;
	h=To:Subject:From:Message-Id:Date;
	bh=rbGfng6RYHeS9w/RwOSkCJKT3iZS9gPRLxGNKj6SKhE=;
	b=bRqJcmqGmqLy4zArdg1OqSM8K6wceGemVPBy8ZMa9eeSGClp+5BgWYp+bLqiEAuA
	K8LsTuCxUB8SYCvrxzviDOlUPEWwSjx3E6EMPXh8Dh9r9GhAsKTMKJRfFNwLq92DABH
	cjUWYNwg3sogFPJ2srxkSM8KmJV1ssS+8zuUbUWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660235453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbGfng6RYHeS9w/RwOSkCJKT3iZS9gPRLxGNKj6SKhE=;
	b=UPzu4BHgfdQMkw5o5lKNdu3tjFqh0p0xDjjabA5Y9gpPbyesXsqr920EWohv0aEo
	k7kP4EpdPSx1Q+F9iwG7bViuv1ABZX659CPopB6eezZVrO9/2iaO/gImYBRSE/6JePv
	EVrWGoht3WQpeEIJhOMriI8wKnJSFxqp0OfKRXIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828dbe90c3-0924ba48-e868-4ba2-990d-e35eb3b45f25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3583c5107ebf41452b57e42e077f4db95946600801edd5cff4c30a2b9e5442f5
Date: Thu, 11 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660235452
