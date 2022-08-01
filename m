Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DD97F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659391252;
	h=To:Subject:From:Message-Id:Date;
	bh=dsUD8lPkFVcCQWwa/xVEVlnbupJSiOPYahhmPfgDtfg=;
	b=QEF/nUjd1A7NfVDyXKNkkJaAuaha5VIfyQcWbwtoJKwH5Zy5UNtP0U/WJOx4Y4nM
	pJnU6YQSTXSf9bLeCn/zmt9czH7w9WTcKGNkHUChSFpw+Vj595BC152xBztFkzkifux
	LAyqpL+wF6MucaJHBJCEFbZJvTX65iOvj/MkBxgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659391252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dsUD8lPkFVcCQWwa/xVEVlnbupJSiOPYahhmPfgDtfg=;
	b=V5Jm/BJsYMGZgPduXGaBuO2veBQiWhEfrskYuGe0Z/Zz/K5MfmfgmAt/xHoVdQqp
	F3OdygMTpTYLrFlyDu7Tl+33v2sJ6kfX4dUOAUk1FGgby5r0xO1XNuCwg6AmIcLFPxL
	SCA/Pxm89FnKBp3XHd3ghrnntjop8NOehB3nHZcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b6d186b-839e6b76-bd73-4e4b-9942-c3eaba7d572b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d46ffcbfa0a3e84516b0e6292759b103bb001258a89a98673215d7b179ce12d2
Date: Mon, 1 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659391252
