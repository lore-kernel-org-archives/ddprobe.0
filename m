Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109507C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 22:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653692279;
	h=To:Subject:From:Message-Id:Date;
	bh=ZXAFeZFjlEUO1gLEyVldurbGfI4TUNw/fwGBIt01VCk=;
	b=YVH1kMpHpbQkJWO8RTY30dW1FVfTYY6akQd4wnpK3rrHex8ZzTFxxwSqWTSJC1Ex
	4XPWVmuXACfbnXIbwsrF1q1cqFyezahulDIvrz7WpdJC19C98aWzadpeMP7FfpXpXiR
	C3JeszvJdikkzjW2PWtg4WQWqq9cCdeQPFBFYjQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653692279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZXAFeZFjlEUO1gLEyVldurbGfI4TUNw/fwGBIt01VCk=;
	b=HNX4uJrj6KetV8CtD33WglZVYmM/2VxFzxrvtgvo9tTh6AxpwREKzyN8tTFxS5ht
	mvS0+dKjYGTDRsRiJHz8Ls8Ci2hX5UI47SUcEKZDLLQ+hIiFDvAfAO2bulBeGrDjag4
	wcbuL/hQ/dtqiqnDWGi8GAV4LxNmxvt+UwOVxjKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107bda9fb-2afc860d-0383-4445-ba91-11ee1929ee2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed536f78d68122f3606d9e2738f1b8cfecfd2aa997b19ff64f6c84d17234642
Date: Fri, 27 May 2022 22:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653692279
