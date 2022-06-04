Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16521365
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654337399;
	h=To:Subject:From:Message-Id:Date;
	bh=ZHTVECkRlzJsqKtAbnrzq8sffNJ0itIP8B9HQUw4CTY=;
	b=Kvd1s/mdpSDTlQI0OuCbHgXCuuUV3yX2xbgQU9rk6A91OsHHSkF0yROkBdXntKDu
	c45vZnxSYs+AbTneCCJ++625+qenl1HzyuGOjkvzZkpAp4BCVvhVbzRx8j7ePiK1Up3
	LtS+3CM0zIbm2TBOqhFxJK+FTg/sBvXqkGR6DlCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654337399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZHTVECkRlzJsqKtAbnrzq8sffNJ0itIP8B9HQUw4CTY=;
	b=jsX6UOWlS7OPy0mQUw0AAXgJNYFPxSuZJqlrD4X7KgMuCho0QdFbnWsLFwtu+G72
	04hBCEQvYIuXgCpx12AQLSap318q+Jd0CCXkLtBjLrx2yoy/q6wx9EADuH0CGNvINd6
	U6mtfE7VlLgM+iM7EIjpXkMxl/sLh1mMtGYKPgUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e316a07-9c4174af-5858-42e4-b957-cfb41d88ccaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f7f5f35b0368e349ff6f48a9c76ac10acac94c3fa7bcb8841fa4b11b99a5ebd
Date: Sat, 4 Jun 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654337399
