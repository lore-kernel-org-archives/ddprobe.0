Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49627B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660698653;
	h=To:Subject:From:Message-Id:Date;
	bh=lLT3hynGg+8MfcEy90uivWcAcd2c0ZzVklW9H6ClBAg=;
	b=cyX7B+Pk63ieaHKJcIYhqxzu4o26ehWVdIZH0elxLd1d3HEuIwvEx69r0Yn6ls52
	TJ0DhdJ733NRA+buK/y21QepMpiQxdgYwX8DFhBMbI5f6eBrdikqA9I4dAoUu0j2INU
	/nQjM3cpYO6esBjPSxmkrKlkLNlUDtjlu1Ft2Upg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660698653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLT3hynGg+8MfcEy90uivWcAcd2c0ZzVklW9H6ClBAg=;
	b=VxJ5oScjouMNrtzt+d01fPAzcEJJhJMO2Ua2yuD/dkL0QGFW8xNQsAHz52DjU36c
	Ygt615XRfmfJcn+bog5YAEoZ+yWnjaPVJsvxygcIAgookjZlsC5YtyFQRtmEGWjL8Tg
	/lVTPYaYtiY1Ecy5Qlom++MMZmsxuoyjLCAK2ks4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a95a7084-a77dc47d-e53d-4358-bacf-f7642899541a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38a83335c52c485b5128aa466d7b47807da2691dbd327c0d7908bb601c27e9f0
Date: Wed, 17 Aug 2022 01:10:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660698652
