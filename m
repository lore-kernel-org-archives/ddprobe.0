Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E4C7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646370984;
	h=To:Subject:From:Message-Id:Date;
	bh=mrey7VHAhqTW8KbGaSe+9Qoh+S7TpNXsi2NVYNm5YRI=;
	b=d9y7DTfjvy/YDao+Dq3Ekk0jCD6c1bF4lq2SCbcfRkWrxxgRbPr9ayltQ5bKwg+4
	6sbV6kZWZnpjxUIJzdsg9lEiNS2lwi6NiLltXfNOBekA9AdNQ5n2B2YBjTUZ1udqpy7
	wvPwBz9aBgzrvnH+OH6h/0jcn7bEVs6kmN5Yo1Sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646370984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrey7VHAhqTW8KbGaSe+9Qoh+S7TpNXsi2NVYNm5YRI=;
	b=iqw8aHwpttYZaf9eXXt4ricxhqLm/ci5aXCE58DTRMqLpQI35TT47s/VytC8+Uki
	Dhi86mQst+Qb6+QLlIjHaR7mlgEoBpvGqK/320vxEleeWKYgGQTHHr0zyFnz49wakNF
	xmij3BzJyyGVLcP8Pctsld1PtIwxMjP9dv0Xs0Hw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f535b9328-e5c6ca9e-33dd-43c9-96ed-541581c6ada4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4246b94e52cd1fd4b2a6b7e73ebfb2b3da7133b6ff320e2c18f3eebb610d0157
Date: Fri, 4 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646370984
