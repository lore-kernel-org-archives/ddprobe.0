Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B0B46B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656355012;
	h=To:Subject:From:Message-Id:Date;
	bh=nVoWSgQfiVHzefzKF+DzV3R4zXqGSAg/xbDV7C6N6+Q=;
	b=Z61czBHCJrHd8RX4dS2JxBvF6IG/2fUBNzz6M0zk/08K7tT9uHrjTWa1+nNUx8gM
	SFO9od6VzfUjgEe4Pv8PmLUjmQwtdurUjpl9uk3bXFMe91F7Eva4A0tssRHNYpXc+bE
	yDkx/pXao1gEjMq5CEQyenJsLQpSx+8ELr16i48c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656355012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVoWSgQfiVHzefzKF+DzV3R4zXqGSAg/xbDV7C6N6+Q=;
	b=j889irL2Rq5iYMgeupgX2QMtVYi4F7jG3ob1zWVPUoMHMKStR+Af9ZGIrFv92eCn
	Y/AIXs4M0B9d0PeZ7fIga24EHNCHatSGwsUopUliE/vVjk9Ph4ttLbOY6jK5rA6nUZW
	2RznZHVy4S/VyYJ2iacdXvR/vR6m7U0xMeMKKWw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a673be84-cfd42071-1ef9-479c-998f-8bd8cb94b295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9a25da3b224013d8bf309d0b791e0ede635f3e10d41925f987e1b727864419
Date: Mon, 27 Jun 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656355012
