Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10C21C3D
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657489012;
	h=To:Subject:From:Message-Id:Date;
	bh=kaY4ROXjDZAciCXUjZY9BMnCKyiverO11xhr6AzvOmk=;
	b=lU6YCUmvvIVHHTnSoJk3en7+srz+sPW/b1OjRH0yJl3P5bB8Yu9JdsX+XXTN693K
	dqeEW/tw1aK3H6ZAXqpanPcnRIUmdx7SFc2qlvOJ2d1MjSsjE9+EfAdBik7V3xwtrHO
	xn2DcciZve8+T9K8mWgMd/SIzJxFIFpNBseYJGFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657489012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kaY4ROXjDZAciCXUjZY9BMnCKyiverO11xhr6AzvOmk=;
	b=jMV9pH2c5IVP41e8BdvTutS4ngfMAnRbz3jZOpdNeV9K4Rp/3IzwHgqJxZ6TrjEV
	4ouc1e7tHqfxwb7Iz1mr84QIb2oRZzPD7dJF3GAMXgSoY2U474kVpUd//8mrVijWZYQ
	s9A1vHBrP9fUWTwbr2+NJLCAevPpt/FnKwnXdFZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea0b3644-75a30c96-3628-4902-84b6-8825d4c46411-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dd1e1cd0ff9c3e70ba5112d277db7c1be851adefdc2e543827b2ce447b4063e
Date: Sun, 10 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657489012
