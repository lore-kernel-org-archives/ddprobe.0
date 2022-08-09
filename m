Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D5615A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660014652;
	h=To:Subject:From:Message-Id:Date;
	bh=8WvcHojTeEe1Ck0OjrFoCW7IAD8jvLUM4L/vVyElazs=;
	b=CITEVy5yqV/xeTqrw/G/wj8g079DD6xTJTurk+SYhw8+ficO/Z2SAEkBuSC74bGe
	u7zeQMdwVNyYY9X8OlXd7VsaAc8EE8TJMlYwiCRcMC+dFbhFJKvs9Dd/1jiI1KoklGc
	ASq7zymghyEIuL+jJD8uOaEeLRKvUH78PgPWONjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660014652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8WvcHojTeEe1Ck0OjrFoCW7IAD8jvLUM4L/vVyElazs=;
	b=YR2lk0osUSXumg4203r4uoT9nf/UMs6Gf4cXltKfCh33Lf34p2qM6qtXDhw0yUXA
	IjQmqf7awV2QQhj2snAI0Bg2lRMok0Gvfe2dRNrn2BNvEoZpRINdULqeUu4uxRAcRLW
	KKbKrcbb+/q8RgBB6X+r3+XjZ5zy+CZbUXElHX98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280956c8a-0367ab7c-b849-4d08-973c-09a78c7f7241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b9dcc7b7fa39b8f91b329fa19d1cc5127b5fcd24e7fd8e8c79c4a41c55a6e1f
Date: Tue, 9 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660014652
