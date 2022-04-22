Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C8D2F3B
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 23:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650670798;
	h=To:Subject:From:Message-Id:Date;
	bh=zglNfDfZEj7en4y+XMk6gsmrkQRsGpmW8s2pMsTB+H4=;
	b=fw6NNyWs+wXhuMDv6g347GpfuHOp6s42vNgZIJofZrD3VwfWsLygEIxrUQDwRm1l
	7nsokpcTG2gn3uIEYTm3nIDXJB0ONLWdMZCQRn5xpLDn07kTT3fRWUiY1NUcEv9m0oW
	rJRJfxxqrhRMJ8gQTiP9IBTc58nCo4bBjh8IrHIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650670798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zglNfDfZEj7en4y+XMk6gsmrkQRsGpmW8s2pMsTB+H4=;
	b=gMYcTl9upe3xM+U6HI5U1OYc44nsYFJhs56S9yjTREtUJi2fSo740O+T1hDwgirj
	A+3hAfQmck72Z4Rt8K3rs8TzHw5bK9CXeIPbmsWwthBGPdSAtIsnJEknZU45dsSRHP4
	b/TZ2wk1Y31PhLh28PvC6+KZqdewj+5vjzfukzxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053a585cd-82d51844-c62f-41dd-979a-0bc35086e483-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd353b9bbf8c4cd1a1ecc186fa8786450395c83e00bb8ccb03e81fc213000fad
Date: Fri, 22 Apr 2022 23:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650670798
