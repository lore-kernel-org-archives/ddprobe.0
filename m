Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC733234
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658959252;
	h=To:Subject:From:Message-Id:Date;
	bh=lXvSU5uAd/FC77HiDj77homoO4DOFoxW7DQSwxO+ogs=;
	b=gpwSmYU6T4QoNXL9alJ/zG6k+a/1x5GgxUSTW5mXyC0dmIEFLl+lxoKRvB9Ywm12
	Mf/ZqJk8IKsoV+4JkBvoOhZVShiQ+y0P7+yV6Zmrl5EvadGtV8FuWRrg/lNXSJshnYn
	I3Qh/syKfWKZGDIvpiTetK57bSggj4vXSe9letqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658959252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lXvSU5uAd/FC77HiDj77homoO4DOFoxW7DQSwxO+ogs=;
	b=RJ8XjF+ii6UoFY7oYpKtYOWHxkOc4XLf8I3hpc5fWp3/y3SF4qnglJRJg9NWyZuW
	uVELxR42y/EQAa6U5BsqSvaqGugdkJ88xO8XpUKQKeolpNVOPPEVu/FqjCKuJitbLDR
	vPEVXlfvadRaEYSBmjnDrqfw/RDpdkJv/daTomcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241ad4c7d-1f48daa8-c614-4ec9-9858-dc8f75f43ca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97b078f0c1d16d3fc68520c77b9d4069dc8ff8afa1bccb951629aea085eeaafa
Date: Wed, 27 Jul 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658959252
