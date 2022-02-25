Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCC17A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645779984;
	h=To:Subject:From:Message-Id:Date;
	bh=I190ebZbbBhGqe6qQaVitM/0fEh2zfO3H+DmV31VMYQ=;
	b=J7FuBbc+ySQAzWDTj/A95HwUdOwPrI80HHqaQ1cm/GGOes8eiuPAVZxK2HEbuTo4
	JjklrxT7gmdgMZ7XOjv4m1rU7fZg1SulaIByi+/JIX5oTGx0DedvFSkoegGlzoDh4PP
	fNfaJXG+EurfE4Z3csEIPJ20NFAbY19w6stK4BrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645779984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I190ebZbbBhGqe6qQaVitM/0fEh2zfO3H+DmV31VMYQ=;
	b=Z1cvZVP1lKYgTyxK5Cgol9z4LVFXAPn99YwrYrqHtzrUE1rQYLc0BNAazJHSzsLv
	/PqEHC4LznPOPSjcUNxjkyhJoNopwfKUzrltRblOmJbvfPVz+gnXlTsAZ9U2CWIf+vJ
	kqQ790zYRBstzLe6/CL6ap/7joFhFKyxcUnhic9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3021a164-fe94cf9a-cfac-4373-9d95-e03af9ec828b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b58b8f808241b67d69eefe23f695ca4994e1f73bfacf362cdae8b7783f88d3a
Date: Fri, 25 Feb 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645779984
