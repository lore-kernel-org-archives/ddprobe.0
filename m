Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0E2539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645276285;
	h=To:Subject:From:Message-Id:Date;
	bh=WpVT/FCBP3JQKr7zTm6KGu7gY78m4HXTfkLqSasZV98=;
	b=Kt2T49GRRlZ2h6L6HMNEZYkgwTlErgf6M21ByoeoyHvqiLqJ82tpA5TlTYINaWKP
	6A3j/AfC6PF/FbeIzZc/loXjJmListDwqNtQsPuN44tpwWp7c3GdED9iur5qZHY5Np3
	Z5BqegLu8472jFhZz5HOF2ve5c9SujNhd907qFFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645276285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WpVT/FCBP3JQKr7zTm6KGu7gY78m4HXTfkLqSasZV98=;
	b=SoY8/vBF+0DSPpaQPgrGReWSDRMR87Wpp11PZVCjN/yks3HrN9IeLMpp/88kU3I8
	J2ab6AqnjWrWt10rDhk8EuCVNDAaH6TCIIwm/7o5sMsMs7u5HzKZnjWl2rfEtyJkvga
	J/WFO0zwnOy2+hE8HNTTqFi4BprCx2XDUr5ZpQ5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f121bc7bf-3a240f6e-9027-4453-ad83-a748bb95d524-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 908d940d7a2932b8c6169b4d444e3f2778a0dc2c35f3fad014913ca70f0859fc
Date: Sat, 19 Feb 2022 13:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645276284
