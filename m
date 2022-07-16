Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1612F36A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657963012;
	h=To:Subject:From:Message-Id:Date;
	bh=u+qTViB78AxVqWDcvvAupqzl0MdrefiJwrRhUKWVajY=;
	b=bkVUgpX/NJE40Jtjj1bFzZRrYcW64pHIJ5TIBP1Q6MZdjjlw0n4qjAtT4rE32ub8
	B1LX7d+gXzr+sdMecQYDCc1T3buCANt5W+m1ZrFW2C7e8BQWW7xVjgg4ws6vgF0ZWIQ
	dYY1YYhaWOi77uQ1oM2zvW7NU1U2vqKTg3oNvXlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657963012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u+qTViB78AxVqWDcvvAupqzl0MdrefiJwrRhUKWVajY=;
	b=d8HVQBpnSow+Bhy1rRy6zeYMX4zlYyK4XJBt0MlYgart8/JgtzB0rt3q8X+XqRR0
	hHKhS7sRLR9Kvm7EpyKyN6Z6SLZwU/02Eazz1tAuHk0uADTMlU8PvPZA915gBxWslgQ
	N3xckAcOWARjwQBgN/dPHqqg5dTFw2g2598+aUXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182064be0dd-3eb9010f-785c-495d-88e3-e5c6812d1766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b350debf7031d96d8ef4a6a5e0d495a833f5d3e316c425906aaa966b61d3719d
Date: Sat, 16 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657963012
