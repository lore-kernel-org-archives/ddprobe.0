Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CC917C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657850212;
	h=To:Subject:From:Message-Id:Date;
	bh=T0q2lC7qX9E1yEPc7G8oD+kmkThAqIeK3UpaI5G8FsE=;
	b=e8A/WWCD2m4OqQKMKJLr5qMx3ABIqV2IwOzrEW0b/KOR3sds/ISMM61MLquqDMAe
	52Am6CCj03xrk/UeppHwbKYxTPHWwD5bwFy/c9f0hlQPuhEikNyCqklpjMqUQ42FtLd
	S8EIKZ8Sy/6lmvoV8yCEsqTxftrwpVqxyWfQswKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657850212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T0q2lC7qX9E1yEPc7G8oD+kmkThAqIeK3UpaI5G8FsE=;
	b=NbRq+JhYiLEAwFSX3uzuEH1TiGvK6Pr/Bi0w8GokMbI01zo8no1z42kttnH5g8t8
	atB98wrXLc2cJSL1TbNXQ5kU7Zt2OKZUAeA5xVM4BkIKoz06lXy7NSHyIGrddG0ieXb
	sjOjJSvfheRQPk4ICFbIlDzJ3rOLPpTux0m/4BXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff92afcc-8275574d-6de5-46ca-aa07-06f8cd0a74ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed1a031aa9f50017425689ad23f2632ded43e2f9fd7b0c77792b1a91956936a
Date: Fri, 15 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657850212
