Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4D02F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653070079;
	h=To:Subject:From:Message-Id:Date;
	bh=2ApPFI+pljgry8w3/TUwYJ9y8z9eS4JfFgMWHYdLKCg=;
	b=FLI4bHhdiL73Fxgcryvbg64TtIYyVWOy68b/k+HsK7/BEcVcZFC9ra2bw5V7EMTK
	LJtkt+raZ89WsJVUvG1q5kJhjWqKj5C1A4EQ+C3embtGZC041U3tplaHAuSUrazsVES
	2LUXvpSy5SE5oAUGxQxBpXEtVIVCOjT1ZMjjtme8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653070079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ApPFI+pljgry8w3/TUwYJ9y8z9eS4JfFgMWHYdLKCg=;
	b=dxfgWtuZclPBE7eNvTdS/cXuC609BMcMtzEa5rc1QmiVss3rvW5QBw0P2CIqOYmt
	aP5L/zVVsoATsioux3UHbItLHEZFK9XpR9tfCwNlgJYOoLKjjTlADLb/6FjH64D4Pwv
	G7k6O3WqSqlhDuvFLRDhsiaQ5OmPFXsN72yrvF6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2a7a53f-22c0d1d7-a93b-4dc2-8a98-afe6ef6db63b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c44f968c0fb6bab778b1a574eb1aa54c956fc04a5907a162a1b3f4efac670757
Date: Fri, 20 May 2022 18:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653070079
