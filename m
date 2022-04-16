Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E176A2590
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 19:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650137158;
	h=To:Subject:From:Message-Id:Date;
	bh=d/MUw1QTPbmZmnhy6bJeo9UQQA1GJ1YHrSYcV/xY2Bw=;
	b=fpYPwPMV16c39f8poWmcgZ/WMHnrL1XXyVE/U7cBnnad2qd2Y3+W7UH+4lUFNBOL
	jD6dg9wX72OkBx6zb+y+MqUAif1L7Z4Nm4+TQT8NlR1TRrEbTQq6bfFbxmq6k7eLYNf
	8DWwtoWlEfKqgsvhG+/dcwnkFnpMqIOWchmpb42s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650137158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d/MUw1QTPbmZmnhy6bJeo9UQQA1GJ1YHrSYcV/xY2Bw=;
	b=NV7/3o2Bv6eZl8j8jA/SqgQ4YPQOb6VUz1k22L6MxfzRhDgGfFsSZ5WoWuxospAf
	yqamcr/74ubSsSrw61yhkDcOqMi3tKJCtA0kuD3+K0fBXbf5LGQSine7TKfSWrOqhU8
	E1PcgzCXAlm+LgyADWVSwhI3/GEw9nADFyoe8LRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033d6d272-c63a6ecc-f32f-41db-8608-2d9be0b905db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbecb4f36b668fd2b226cc310866b6382fa257323cae249a4b2bc8dcac66a303
Date: Sat, 16 Apr 2022 19:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650137158
