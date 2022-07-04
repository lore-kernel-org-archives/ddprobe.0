Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251D97E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656956812;
	h=To:Subject:From:Message-Id:Date;
	bh=xxPBD190FV2j25vOleDRzNI28cSm0C1msu4Jf026w5w=;
	b=PZ4Bo7quPETmKBFsN3OsCzwcONdkFe8j19CRN8+5md773jR459hu7HuW7YU39WCi
	exhzkzjsDcxTkWAEcvcwPXRWwyJtRaQFnlByxM8Fr9QZaHlyYetu3yh8Nadb5KWfve5
	m41i3fNebfcr44tTUFLnWHnWPLz6MfXC0+KMEx0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656956812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xxPBD190FV2j25vOleDRzNI28cSm0C1msu4Jf026w5w=;
	b=GOANddEoxCt+4aOSZpsNSU/NtrTzPEU2U7agrYIPDoWoaiJf+l8+FZqFBl7YFrX1
	GpLwFLUWuzV8dbh9z+PIn2WhNk3GcXysCpsNAknBJ5XcnwPGVavDSxTwvLkjY2IkNEp
	xwN8EFL9zxdSkKNFe8DwzBOMNtev/YSFnLEow+9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca527c36-a5011b18-2723-41c4-a82e-ecbadf3b41b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e2055c211bef9d50506b1273830e778cd736b3483d36e1a65c0a93b18a466d4
Date: Mon, 4 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656956812
