Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487882F28
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660596052;
	h=To:Subject:From:Message-Id:Date;
	bh=C9LFS7sEODg7z/8bLtJvsIXWdNz9+4c9++LmbjxE9gA=;
	b=Ej5ulmMq0BQK46elp0sjK2XV+oA0eYyJ/6RSlRk5KaVcHjpruxPIa7uPr3o7PXpn
	+3Ln9nSpfztUcKnGXWeUMfEN8eXPBV54bKAkLqV4gfokg6v9NJGTBrZo2m2fRSt3804
	tY+1Mbri1IgBIEOQzvpaxdBIyk0+QvgmpOCd5mR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660596052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C9LFS7sEODg7z/8bLtJvsIXWdNz9+4c9++LmbjxE9gA=;
	b=OvtPWEqrzRffXPUgSTFHrTGU2g/IkWmYZAvmK9hM+ld7HcRLuOFyoh99g17eiOZD
	qJTauf9dKfyolIqif8PISXCP+8o7cGFXwvH30zQ4G/pwYvNQoisx0HHBKdKg+6mWtJh
	PaMncbosLYk5FsCFS/1/Plw9xbSiuk4TkF5W0ySQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a33ce282-9b91d993-6e57-443e-abb9-413c4ed21fc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9bfc74f90442c2cb293b23001f72962b2d0910ffbb06ece44769bafb12162eb
Date: Mon, 15 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660596052
