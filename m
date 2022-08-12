Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFED1371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660312252;
	h=To:Subject:From:Message-Id:Date;
	bh=Jn6bz6vJ1nx6EhRGTwcNsZY4SgTmwYBEe+HHJwAIL3s=;
	b=OzQeIifR1KmA7nHAfDGb/wJ0wYJbWgwgLWuZXsVkJsQ/Qy2hzRfcnQSi9jtKnId8
	P7IYISNfu1AWE4yiepNBskS4uRKavZk5Kzel75Ho9aq0JqA8w6jc1qj+JWb8YvZAnCq
	vJMmMebfnAgZPnt6ryrjmMFaUDBDxecGPHIo4VvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660312252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jn6bz6vJ1nx6EhRGTwcNsZY4SgTmwYBEe+HHJwAIL3s=;
	b=WEEqCszO7fIF7/Eg94DX+qwp5qHGoN/a1r+8tnSGjT4kyOh8+VBJYFbS5Ud0mWeg
	ysxHGK21GhdzGsEsobmbSNCYV34hpOi2wmbY0/UEcU/y7Az120JoVmd+XNPFYxlf4Q9
	x3D2Hxo8FlUvsthtOpXoJRFb9z5Vf6NcJAgEgems=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292527096-b8f09ca6-590e-401c-9cdf-a6025315fe71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fba2bf3859760fbe218a8d923a2ff1c02ae3ec72b6ffb6b8da292fe1a9ad31c
Date: Fri, 12 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660312252
