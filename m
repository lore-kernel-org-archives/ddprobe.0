Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533507A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646805084;
	h=To:Subject:From:Message-Id:Date;
	bh=ReluBXFR+vcBvtQUjvxKN/9CXqC8+HMHBUrRimQ5y/c=;
	b=S8fQa+oqU4Cgz38LbuWleAn4+3o+FPNzs1rWlKAiTux6CjpaeYh7heL/rljy/aeI
	zFn6ukp+DKCZZmdA9+4RqWMCtxiHOExNayyJQaDXT1VJvYWRRkjrWhwEpOyto2SHhld
	n20abGU5nbrBhGLbOEoMPKWDOSc1wlYTsnOM8gpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646805084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ReluBXFR+vcBvtQUjvxKN/9CXqC8+HMHBUrRimQ5y/c=;
	b=kyrmjxIQwdkNYB3osO1VqhgcDHYw9vkOD+SDGEkg0lsyq4m20zEyhvvI5wUMWJVG
	ThjVQDB7YjWLx1RBvTI/vwoQw30hl9/osxXsYQmMLlI6ZFGBUOocoRlkinfWrQQ52/N
	gbnrmq861o1NOCrOGT4i2Dxi90uniFYx75F/FKOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d3b6a24-3e671f7d-51ae-4f3e-bf97-ca73d1819494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b6c5568b10f610f05d272592525e054191a170bda205f336a8f9eb7238a5123
Date: Wed, 9 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646805084
