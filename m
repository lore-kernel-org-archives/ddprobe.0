Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770087B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 18:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655578199;
	h=To:Subject:From:Message-Id:Date;
	bh=mtHDcVPCofk4hzwfDvgzopuKG0EeGTXIzozQ3UGOk+s=;
	b=bTMgBL0HF4DL02kpX5/xMtItRvAc+enWQ+S08EmXIhfPRmJnmAghSR2AtjiAL56i
	980cF13+aNBq1StCev07U0rhcORWNeLi1hGy7LtY3HG4DeTAQpMlmVMkFmvA95sX4A7
	p5uPxeESlXvfrEJnttzoDnuxPfWwF3B1uQRM/1xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655578199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtHDcVPCofk4hzwfDvgzopuKG0EeGTXIzozQ3UGOk+s=;
	b=NEzX9D8NEtbpzv6Jam3L6AbV735qxVwFie/GNapO0q2PcXFERcJVLvgaie+vIXkT
	8dBH1ZzoDn4Ut3qImzvDjxqltl6NY3ja0yl/mAjfWofiQBTC/qXYK2txLbYlh7fhxBl
	ELS1u8Kiuawd0ULmTv5NJsFHwBmnCDiezFyjXH9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181782684ba-173169ae-1633-44ef-a6d7-b7929e7a3ee2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47f6ce124db2f11ce970b07daa777d069c70f5e6227eb1994cbf607633415245
Date: Sat, 18 Jun 2022 18:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655578199
