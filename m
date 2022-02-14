Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF3AA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866929;
	h=To:Subject:From:Message-Id:Date;
	bh=UMqJfqAJgNqkTjwO9oeuKnsXNaIdTt7Jlm1jRabSjw0=;
	b=CeBn2R2MlPjnlgl1HTi6gznYdLuUKikjjg8UqSETpNzCLRpLEwTdQo08uMdnQ5EJ
	r4W5RPsvDX1FCoSG/68jEh7YjzRgh7etO5U1X+l9G/iYI6NVOT6zXdKeJn5recOxtIX
	MIKvi5yO6xlQjJeXBs4rIA1VWOickrVfz1oNMz7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866929;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UMqJfqAJgNqkTjwO9oeuKnsXNaIdTt7Jlm1jRabSjw0=;
	b=HTIvWHv8S+nKvmhCkNDX0xHP8VWkKrNhXpzfx2ahfTWtdsiG3Ca7LAsCGt3dswCM
	prEEGTgfq2EIduwPirDaHyqnY5sS5xt5Nzw9KDS5lUTaqPZwgZ1f0VyzKSjGYot1uQy
	6tyg1XEZI9TYKut1ucA+hgZPiYN++9BHmO6/hv50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b5844b-61d48175-3f3d-45d9-a273-317a64874aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6100baecf657639576985b468bd924ac5a7a8659552aeeef05f4fd76013943
Date: Mon, 14 Feb 2022 19:28:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866929
