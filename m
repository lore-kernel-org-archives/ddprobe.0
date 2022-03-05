Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90021394
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646505685;
	h=To:Subject:From:Message-Id:Date;
	bh=dzFgaEh91fDAwaHpirGv1kIQ2a/vdCLK4St403xpewQ=;
	b=YNg1wtT5LaFZPG/9V9LgPpssVivEJNm7j+eRhqbIQm6DCahnaFjXjPwSuOKVomiQ
	nsT5WpaKNMMnmgD96NxW0IW1zY7sCYo4/uQlVSMGG19HOCn4tvdyagahUpYlPOOY7Ri
	VVGogHRfiaRbL9wQvoAZ3DiyN1yIS53RN0otONuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646505685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dzFgaEh91fDAwaHpirGv1kIQ2a/vdCLK4St403xpewQ=;
	b=Iy96xUfrYSp9uQ1gvGzZ1WOylhhnwiPs8HSb6ELnTqd90ea4NCXsMfsYIqEZnsR8
	tM11t0ddA8D38++GVCWrnOaduqohyAHLb6qZsJKzj4W44r8f/Q20ZAo9rYGHWQUw8OP
	B9JeI9S+Func+nlG4mcjWnAjUgaRHFFmRFkMi95U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b62ef30-8a7cbe02-c9f4-4d76-9931-f29eeec6f49e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c4bfc0841085ae479ad6a39ad7dbe2fe336d3ca273bce9507e8e2122cf105de
Date: Sat, 5 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646505684
