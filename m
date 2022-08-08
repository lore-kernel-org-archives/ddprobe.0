Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5EE1FD0
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659931852;
	h=To:Subject:From:Message-Id:Date;
	bh=5ZcPmciDiMGmod7L+zm8PHIsDRXi+xXk7aOqwsoCezQ=;
	b=Mb+uSHkEGQhrX867rmRrlyM24RlGRJkCIIw4fJBRuJ9AiNMxYbkCUJy+DJ/WUtHC
	EFHNaFSY0IXUj3h5jsrIhatPLSB60tl2Ok0IjFrCHMfcZexK/OC5lNJhUYRDzT6LUOt
	gdh6kXdo4zj/4wALV1RR+qS+BL8B/ku1hZAGYFr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659931852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ZcPmciDiMGmod7L+zm8PHIsDRXi+xXk7aOqwsoCezQ=;
	b=ewMEe39a6Vy8gaLXk4oENxviqUdIqHUtzc5FigKf1RwzHDKIExYErlEo78eAfe6q
	Um3V+pS+AmGqbksL42xOGyLukBo1Q/GhvYFdJ9oXhmSI7X5sbPBb8EBNsg4J4svugzP
	gI/KPzLeEUuDepg6XNygXnxEe3k17+QqdonFMAx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ba5ff0f-5dc28419-c10c-4d90-b8b0-a1e74903b29b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 243b02b209eb33b7390db6faef5237d3e859abeb09b4af4bbd8e675aeef5d623
Date: Mon, 8 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659931852
