Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C135124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645256485;
	h=To:Subject:From:Message-Id:Date;
	bh=DF+VrFhQFHLMHwlgstw6/V7D+3qG3y2cpkv7YfTliSY=;
	b=HulD26xktkPH6DfBNE245da61h4E4n6rw3icS/prbZL6sc53LQQcbwsG4WWmA3y5
	HObcy0J6rLSc92RAkhO347wGaFp7XLLzWvHbP42+e3Nfo6pN0JP+lVba8vs/nt3Ifpt
	oVJkoCtXbIwfY7LFCI/OycMNYlETLgczlFNKuUwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645256485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DF+VrFhQFHLMHwlgstw6/V7D+3qG3y2cpkv7YfTliSY=;
	b=LVitVE4xl/z32SngpeerHkIZQKoVeii8sH4fhXDuabCV69YlZ5Hk5FJxxooiffjv
	QxJJx+gaEd3KClrAYaJefNjfgfl99PS36Cj129/fIgalFGKw4GLNQ8TdljMOGyAWxwY
	AirUOcH30t46gabMuTjvF3LoQU3higYT94XW2dT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10eda798-07dcdf15-442a-4414-9a13-9471cdbbcd00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3ef6f59ded1d90837d2f50fc54c0e1d241071a2847fc7c41f0e93fe11e4170c
Date: Sat, 19 Feb 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645256484
