Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC2C7B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 00:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649636038;
	h=To:Subject:From:Message-Id:Date;
	bh=UWOkHtUJU8mB9FcbjhiyUjD4svJpueVVzOQyFiiyYeY=;
	b=dD2QCcwrF97tvtpOXYOthxcpa+nqQdjgPq4f91CkrCpU2mEStBYmEjOHMCmSw2u+
	tpy2VRYcU9iQlqgmFvrByHLjO7RhtnibFBFgFXBLraWz8+XvPcz05V+SnqWg7pGcRQJ
	hWooaisgwrou9MuNb9FNgjcWWFy7lANAgDfK7G9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649636038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWOkHtUJU8mB9FcbjhiyUjD4svJpueVVzOQyFiiyYeY=;
	b=TXIxv7Tj6OdaqnuPNzZZLKznpjnTA2BKSC5ZFyrO8Lb2fB+sktKrI+UfUI6rNKiz
	m+9mOisTKKWUZX5Jx4wqNFebYBmOHe/3Dx5uXdqmXJTvgfjUXeTw/F/IoGYFsFq6Eyg
	gEhoV5RjTJHLkKpHwbF/V9A1MxhElrRhTUTM/YOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018015f8569a-fb826ae9-c3f9-439a-b219-f1fe9690b5b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122bf2a8699a90e6ca6ff3043217b1c316fbfd7395a5cbfbd17e3c4025f9ca45
Date: Mon, 11 Apr 2022 00:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649636038
