Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A27C17EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657784812;
	h=To:Subject:From:Message-Id:Date;
	bh=+0/nOtwsZ7/b0hxQNRfYMaUNKFbI636g9aC0VtYf6VQ=;
	b=RO4nB6t5TdsHKZT+/5eIZeE7Xvm4qcGTSZQxNivfkVg6wAgTQH2EiD+7RQmFwMR1
	tusR0gugUGTn3E1fx7yvyqYuSqwA68hSYKqUP4RvPfZhFKDonYydYH540RBdFfJR+bS
	RQwB8RP9sSJi0LgrsQspIcXIrEQ1iIovIZWZKuo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657784812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+0/nOtwsZ7/b0hxQNRfYMaUNKFbI636g9aC0VtYf6VQ=;
	b=WbTA5eUQwuzP6rOt/81FFlvQKzg5yyT3yIe4uLKD9s5tGyZk5Ou18JwOAL+vv0RW
	NN1ZZoW8A/AJ2FnSn6m7s6eB8A8IdHbqBuNpvOdqoS+9VcoCZNHf/UHTGAsOloTQoGo
	CjlpedB8Pw4F8bijotm4h89CucVuYmkCpsiKhTEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbacc36d-3e3f40d9-9131-4ff7-879f-3691623cb72b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ad3510bda85c714d2b61e461bec2f04eefb9744724e6d8a2a3db02de75b53e
Date: Thu, 14 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657784812
