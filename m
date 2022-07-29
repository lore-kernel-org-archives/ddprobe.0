Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863C54C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659118252;
	h=To:Subject:From:Message-Id:Date;
	bh=vQYnZtiRl9L9ldyV/vT+v9uNx+VlJ1YM8uQZHt96ynY=;
	b=er9ogxaoErsFuJqGBKF9jMZndKmkBSpAwZq4F3nalquLmzcxTcOlm3aaVrUmEGcs
	YhZsIerKnbXa3AaDA9ZMpVF6AURf2Urz94a6YrWKDP6eS2SCC5XTC5i1vo/FUyzYxdC
	isLGQxKofdoda0meTYNKxFjICMQkeWA09uczPw7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659118252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQYnZtiRl9L9ldyV/vT+v9uNx+VlJ1YM8uQZHt96ynY=;
	b=PZVjzwr6u9DaRj51Bmnqbdm4UIRYtxJaf/V3cJnGfNaVH7gKuzJsESLreMj9qJtB
	dwNEOZJAVzrK7iCrc7y/UEqKoBsFOtfE/wo3Kuz8PxwRFApcyrxkT9UVvr2h3RQtG/6
	Obf03LjQ6OxTKTOsthc7ZDRtB/rLxWVnjcxLeKkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b27721e-7226cb26-b8bb-4a76-a642-af2e1a431122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c729a59273857781e626e2f707bf06a2b06ca81f4162ee1f9acd8eacdb55f40
Date: Fri, 29 Jul 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659118252
