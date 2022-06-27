Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA9A33FB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656350812;
	h=To:Subject:From:Message-Id:Date;
	bh=hd+lQHO4ql03BBe2P0k7R6W+Z1Sv0Vick3wVK/4sJIg=;
	b=JXWD3aogeeAGQpun0LQ4M4oAOta8C926Ug4E/aST2RkbgcyN0irkyZxH9cW1UpkA
	h2pfkXzzZHDL80PhtzKx8uuUI8zQfc+da5zi5exoqrnOhQ+xX+SeHJQtLWcpwV/G5op
	QoaZ7rLoOVmnCCg5WYRstVFTJTvHXqjDQ6AeZ8WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656350812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hd+lQHO4ql03BBe2P0k7R6W+Z1Sv0Vick3wVK/4sJIg=;
	b=D/PJOSkB0HEPAJ6zHnHgCuljale4rqMIEtqna2XvxXgelH0MQnijNtF6JiY95fZ6
	Qhs7XLsAVJczacizeGQ3IjIWvSM+t95W00JR74OiZ+VLJiyGS38dk/LQ0iD1GmiMXXq
	0gN9Cz27nYBp6f4xLNOPslpv+fOkAZzyP1j+5kd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a633a8bb-2cc25d3b-1aad-4fd4-9ff2-8b19ce65b50f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb755c2c1a199e992bf3fbcefeb0617e63198bc2fa94b91365e1f1922be380a1
Date: Mon, 27 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656350812
