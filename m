Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9587D7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646490384;
	h=To:Subject:From:Message-Id:Date;
	bh=KJ/g2RmnOVy1GmsuB2s29WaDXiwuqqs3mRplFrF86u8=;
	b=RcH+vkIU8HVjEe+fCTqUiKAZv4aVUWq+BggjACKf2RUNMmMyY3QnJ3mrrJeEOJY2
	VHC2/CYN4gE61A9ra+V1FOTHRY6l3a5BC0Ft6N80mg6lALZOPVJILsJ1eq4ws+eolkF
	5308woLso/2FUNYNTr+b7tgFESoeAujD6dupOzXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646490384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KJ/g2RmnOVy1GmsuB2s29WaDXiwuqqs3mRplFrF86u8=;
	b=HqKsHgv6qfTzNiFDRt16vAj6jr3FyFX2YyjT3XGz+hkbNttF0pKmJWnoyygNDq95
	e6lRvGD9ChjO52XPbRh+Pbl2En1/FyE5GWRjy5UlKEWu+BfJ8ooFQKZubRZfVJ054sC
	BDfN3CSn9y/49joRtgq83c39z6SSxdtZfnjQbUJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a797940-299a30b9-b9fd-4f62-a63b-803cf71c7f0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0a6b22ba01a00bf8425c2d0d29e9fc38ae2863b2113369cf35fa3f8ade37bcb
Date: Sat, 5 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646490384
