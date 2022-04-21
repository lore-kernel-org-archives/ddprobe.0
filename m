Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3D31876
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 11:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650541618;
	h=To:Subject:From:Message-Id:Date;
	bh=m0SMXo+VUzIC8Bs3QqBSaeMRXoLW+bIIyY8fBWrqweQ=;
	b=jXQgns4VK679Brw9aKhv6C1Ei9HZLAiL/un99NV2ZK/zCGyQZlbbPyTVgsFfd3vm
	GhV8RiUFxy1ANT7S/soI7bJDlgZGn2nfD74h/Tm+IhTHZLRKs+4jMO18YJZZDrNTt7V
	J5ZFS8ZzZ5MBebtBjtr9qSXZZp/iho+Fw0CzsCgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650541618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0SMXo+VUzIC8Bs3QqBSaeMRXoLW+bIIyY8fBWrqweQ=;
	b=QHxvL53vfpQkmAj8+X7pGCP26DAwyZDaWh5nnWRUg2XRM5w+gszE9JkDV4Hpwl6h
	rVJ6tq/D3BeHReCvlFwwX9Er/rPpT8RAEsu4eQUphMBog/i3CDnlddQ10agwqjaC5JW
	LYvK2t9kNaQvEr7uldXYL0nop/pNc7+9rn9e7UCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804bf2646e-dee65d68-5b80-4e9d-93cb-ec91d04e9b5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd6e10a68abecc7763f7737de299b66e08ae1d6c9c5fa32708153790da56bc3
Date: Thu, 21 Apr 2022 11:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650541618
