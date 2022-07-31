Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E7D3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659280853;
	h=To:Subject:From:Message-Id:Date;
	bh=EU/brRiCacC+xarmuIlonifb8NcWKoxK4FUoUH77jLI=;
	b=NPUb8f6FNKRZO53A/RH3u/MdPdZOHUVS1yj0hrY0n9S2s6bxuLH8kSMccZdSmeGv
	XG9CiDMhtaNgOB5/M/LdJH70ZHTBJYwgJ70V8ocQsfSLfTJT1qzzyt8Zp/gzmJetKvt
	9qYdODdAEInBYIptVPvRxfqbqzyGWdgMnoTPcPNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659280853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EU/brRiCacC+xarmuIlonifb8NcWKoxK4FUoUH77jLI=;
	b=MXOYHvX42CUxJfkT0gr+zCWHJXQDXuvW4lZEwvt0piJSDbeu8GJF6ZZyirGo/wCp
	6afhKy37Zw47Q5CM46/TD5mLyukp/EubYIuuKO4zXTfiWHruZWNou7hF4UNp6/m3iX3
	bJfv+XCo5v2CtIiXJN411ViOw08FczUwrDaFs9jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254d8861c-7453f896-0674-4734-b56a-bd9a99e81dd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e6e545774dbd1e8b8feed1544215fc4502284eccb1176ba7c78ce14ff82eda7
Date: Sun, 31 Jul 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659280852
