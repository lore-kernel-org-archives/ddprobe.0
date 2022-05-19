Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AEA1FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 00:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652920919;
	h=To:Subject:From:Message-Id:Date;
	bh=JE7ZzX9BdYHsBOZO+imlIVWNwyVIC/RXJDk3++z2TOQ=;
	b=XY0aFRmgyv9eRbJrXiODYUFGp2IeLg65WOvKl0EMBIkNSHRw/Oy7XH3JujF+67rS
	0GwZu3qHlvjf3nL96sXRRvMySw1ktan9X3bij4OmNbKz9yXVv/99KgUYbp6nH/95L3V
	KodwQeHvXbDprd9MG+OJIQctoNT3wLD1VXOJoOlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652920919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JE7ZzX9BdYHsBOZO+imlIVWNwyVIC/RXJDk3++z2TOQ=;
	b=HrIxjhRMk3368Q7bCPyemOjkq5HS6S8+VcIP82//10bNvENpaADxlwBodxjck28E
	EV7KGcIScOoaA3nlN0vpIfsj0UN6ajIN5lom4S5iFb3IZSDo6h6s6U+a73Tx9DZoxql
	nPM7mcDeEPhs0NRD8U3aJ5AefQSOWg6RjyxXT6ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9c3a535-8089480c-b72c-46e5-a18c-36284dc7df4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30a06b2cfcc91fdf345631cdae8d3f4d0a06d8ae3c81e5e3a9a2ae140fb2b4df
Date: Thu, 19 May 2022 00:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652920919
