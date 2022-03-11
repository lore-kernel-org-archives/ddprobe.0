Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBE257D0
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647022885;
	h=To:Subject:From:Message-Id:Date;
	bh=Wdr08p1bXqUBR+yiUo6IijC3ggBAFfFfwX/6eiKXeRM=;
	b=VWuvJneVfhjLxnXa2RyJUIByUB5KZLCLt0USk/sPmX6ukmVz9ZAcisfxy4AejMwM
	73qe7rjCwxt7HPBO74hauSbiZuQIM+DYpW11rk86jDmKyr+Xs36koYFbKBEQ93qGvor
	ozfM1yyUm2vZLaV8EaQOtuNlGRB8McPvC68ZwKtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647022885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wdr08p1bXqUBR+yiUo6IijC3ggBAFfFfwX/6eiKXeRM=;
	b=eAPD7joQzdBJiE/OegHZ69/EJMoNSdbbfwHutfyZFllQ9xUlFPNq+1yjwu4BIuIP
	CpLsCu10u0Sf1oAwP86YyT4klJc9XPJfsfbarDonjqlTV8vCtm5V4XwAtabfbLreI/I
	jBtLbPfVuCKe+PGJVaMftE/ST99fUf4ihOAsZaoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a36c7da-1c45c4fb-4774-4737-a0aa-58cc674915f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66fc284bb47cf63b848c38513a73e475cbdf53927ec348796c835fa12e6377cf
Date: Fri, 11 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647022884
