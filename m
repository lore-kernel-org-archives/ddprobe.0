Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078082CA5
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657231612;
	h=To:Subject:From:Message-Id:Date;
	bh=xvp06Fgjk+oMLWa1AFamcxzkLgmkPJUxD7Sgm2Bcyqs=;
	b=TkP+rGlUS5u7M26n6t++Zj+zavlkvWdfqYtNYZ8q9sQ+H8aIF9qL7POoofiumWzm
	8wn7nVUbetZecwfIfNK/h/yTBUaKI2ct1xL2dJovlFdjTbp5bIiYB+xgZyJWNtolKl8
	QuiqVeKk2DdW+XEudBADxEVAoc3J6FvVsyOJIrSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657231612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xvp06Fgjk+oMLWa1AFamcxzkLgmkPJUxD7Sgm2Bcyqs=;
	b=Ee9IGP6CzJS4nDALL+a35YykuOlQJcyW2trqZUYi26Yt/Gr2+JXKA6GUWC92BAFi
	d9GzkFB31oTyaUywekvXjH8oZr7B6U7Z7i9lCV/M0G5KMuaYtUNEgBL9BDqJr3zD/LM
	w/gEO1JE+tBNER1PgjQ9UL13KmPzBztGSKOq5c68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dab3999c-5c3ca41e-e847-473d-b5e6-18beb480aa5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97ac174a41158f922d342e4fa3e85a5bfc1613bd497d9e26c77456baea5d34c2
Date: Thu, 7 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657231612
