Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743407F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 15:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651849438;
	h=To:Subject:From:Message-Id:Date;
	bh=8eY/FLzPcp+NV/Xh8NY3TdfreUY2MmWFPV7Awi42JfM=;
	b=S699WNLlS2KOdFlly8CYEQbtk/dfeefTd+ahZF7U14hp/PEdR3xglN/RpIg/YXnK
	H+ItVqBaCyGxw42oYOJ3P8f3rfO/ue0AMsEQDOX6bnROMv+0DBSWn9uXVdeoOo6ogdL
	FZGEgcQMi0HjyMqVBbwwCkophd646/XEHa+WBqsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651849438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8eY/FLzPcp+NV/Xh8NY3TdfreUY2MmWFPV7Awi42JfM=;
	b=WgSOjffmeEs80vWrLDnKrHzAhN4MMK3ZZxPVjwLF0f4pDqJh+GTagAWnN2iklGUm
	rcDfN6k7Z+ZZUfZRXeWlX/iZ9LLWOq5f6DYq0VRqxa/Pd38P5zuWNhHU/e0T6GliNVp
	tBOo0QQhX4ClW8VT/uEccCpXe/vFuxwrsJbjDxhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018099e6244e-79619b89-f13f-467d-ae34-431d157a3d74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28f9d5b7507968e79bb73a5ad6235875efef9f77c2e892002c6606efc8dcd0ac
Date: Fri, 6 May 2022 15:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651849438
