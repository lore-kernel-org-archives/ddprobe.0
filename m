Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50186600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657827412;
	h=To:Subject:From:Message-Id:Date;
	bh=/oVMyB50rsnwhySHB+8NXWDhyIQijuJeZ41j+a7pHCU=;
	b=OjmZlVtGr493mO/86qFp1lBGvzRCfgR+PQYBmbWu9pUsaTzmtjDw8WZMB9Cz/sUx
	mxkMw86TfSSM09APrx7vMZPGZGtzMeXdlb+ysIPzmb5xtUOlwFo/1CmQmJe6hfvE78l
	JDiuiSxefW2fB/aVETEEFpKUTzHdCp9nYUnxxE0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657827412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/oVMyB50rsnwhySHB+8NXWDhyIQijuJeZ41j+a7pHCU=;
	b=InBAnNq52uA7rn+/6P925cFhDZTFZKRe0vIY0x4/EufByoJb2L51TRdhQuL0znJQ
	KwVkWCa+Ez49Of4kEEcPXRqLdsfKwB3eXK+T9UAuBt80dtC1ab1rixUlk2naUt2qdBU
	kMZh5PqWrZn6C4i5ww90TjdZlU723VkXtFJk6yDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe36c986-bfbb3cd4-23e1-4315-8eae-f297505ca4a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79a3c7878d358f45a99d50732d69b5576b86d6eb319094f0193d211534a4c9cc
Date: Thu, 14 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657827412
