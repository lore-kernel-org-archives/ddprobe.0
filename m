Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8C92F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660252852;
	h=To:Subject:From:Message-Id:Date;
	bh=iHHIXQe6Z2T8cuTwLjP3DdQZHDiNoKRO/xJz/hxwj6M=;
	b=E0ZgNC0WiUKfY/fFjVw0i4MgZt3lRuBSTDR3u1k9N22lEKRRP9x7HV0Xru27C4an
	S6Ar3JbXA6S4gGcZaOgwgaxUD3NcMdtxtw1rb6GypJ0VlKEhi+k39PXA5QfPL7YX34a
	bvnT4KRlxdwYQSur+4UMQS1R1i0Pm3c/KdOwr6wA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660252852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iHHIXQe6Z2T8cuTwLjP3DdQZHDiNoKRO/xJz/hxwj6M=;
	b=ZwA4HuVdIlIvkhRyyI+vKbaf3O46HScojn04jsjsl8WHZ3P7LlYbaV66MkxN+x9W
	YK4m3x6HR940ec/u8WxNMR5E/4b30IteBhiKq7UQSU0V9TraBbI7eSmhEm8JVjRlxZt
	UQXuJee3D/O4M/H9XxzYpKd6KBMovrWTmlU/Wy4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ec81133-1a7d2879-3a1c-42d9-bd81-fcb14a795d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b65ad2b0bb703e2b666c185d3d0625ca56a5373112b9421a685193524185a190
Date: Thu, 11 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660252852
