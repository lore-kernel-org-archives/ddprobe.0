Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAA87C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646429785;
	h=To:Subject:From:Message-Id:Date;
	bh=ojrjfS/8dx2Q3eFolstxcDwdz1DWKLrjV24ilVcPJGY=;
	b=Ik2KGj+EP76fWeTUBb090mtqytSq70gHcI+zPMld8zw2pQdEKXGXHZalt8ztDI5z
	ZlN+p1745NVyENTVKtJgpzEfOFtzgBNKSCmtTdHv8cgyF1u39elfLZwnWD+1QU7/DBU
	RzJvS70B5zBP+fvZ6R7N12wTcw098m0xh3roLhOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646429785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojrjfS/8dx2Q3eFolstxcDwdz1DWKLrjV24ilVcPJGY=;
	b=LrEL8NMQDvjB3Q+pVniASQb0QIC24xRyi3pN9uWKFfgDPiBgH2oCBNVri501Jne5
	Ve8QWJoNUP+9mqrR+g6ki+QKcF1zyCB8JsGtZtJBk8JbGyxJqbEtBVm9mONgUoO6Qlg
	WGtVLN8XB5yW76SQ9hpkJ11eXVvDUd4WNxOJEL+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56dccaae-eaa4ba35-acc5-4e3a-acb3-774fb4338ed8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89ae532cd00af325780d7e9682812a27ae3ec398a02bcaff6c7ac1d31d46695a
Date: Fri, 4 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646429784
