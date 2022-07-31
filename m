Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE975C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659295852;
	h=To:Subject:From:Message-Id:Date;
	bh=VMheAIYS4LTbofwcEyYFtwhWUtcL94PtYCkqPpnDDhg=;
	b=ZQbyFi0a0CojioEtGy0uTsygBn7wCXiEApt/kX6SP/huxr/eVMRBX6kT6DEXwW33
	ZL4PgDJY8i1CbxrhhxJm6NPt1cUZcw6hvfFNMvOJkt1531WQ6LkMZg/AOMp2m2rQixF
	NW/cFu/0TyFXOIPcrzvmYkdTob2+55lwRkcYOTrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659295852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMheAIYS4LTbofwcEyYFtwhWUtcL94PtYCkqPpnDDhg=;
	b=LAmvvyZDZW2/QH2FFPGRqej9NS+LlOOmamMDytDU5Pr8CSjcNFfG/DiTVfu/whLy
	sI9j/vtUnRJ+pxPBz5CYitRFw8639YITPaTX21DBHEN8fgvghpTC3NvdYeHsXGd6eLH
	lB2oqaBmjNOdjf+lJ93f8XoX+RqNvzZnJzKOifUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255bd680a-242ec391-911e-4a53-a0cf-3e4f913c4c33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e960aba10e00c79fc8e46b866a7cfc3d0c327308c6d464690c01fd9372c2e3c
Date: Sun, 31 Jul 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659295852
