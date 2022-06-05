Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EFD46BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654428479;
	h=To:Subject:From:Message-Id:Date;
	bh=qCwmmyW/1EYSVJX1Ab/7kAf+2K1bjcJsBfQLXBuYIog=;
	b=S0c88jx040Oj3V50ausYEoF5vmORPTbkASjDm1n/x5Y1xD8tGyq/UKbohWlIiRsf
	JvhY8zwQvdInbJhulCdUOMrDfGM3uCr6z6xfjcruRLqJZSXS/0iVci5+CMEPmCDPKR3
	sLA+cZpIRJC7+/hHWWqUQ6Sm45nRRW20kWBg75+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654428479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qCwmmyW/1EYSVJX1Ab/7kAf+2K1bjcJsBfQLXBuYIog=;
	b=Ox2K0aUPnou8tKFxBapvnnySo4CcWILBR5kqLRHtYpiXQK19Ju9PWrc+NbTY2lfe
	+AQ30daDZwTzB5IXcEzRTZxyK5WBPtN1+05PhXWuDtdFTKFU7+KJnYvPnc9JOn1LbG6
	rQNMTLJbXU/MbNoZpKbtxi1S1LNY+yFeH5IgEG6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181339f2f34-c58b31ae-023b-40c2-b31f-a31d1f74f73e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa5e9d716595f240015cde96bb281997bd14fcaae727ce20c19a14c5bef3857
Date: Sun, 5 Jun 2022 11:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654428479
