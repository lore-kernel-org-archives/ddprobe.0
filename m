Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467072F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657573012;
	h=To:Subject:From:Message-Id:Date;
	bh=2QrB+XPFx3R5JG/BnunrYc+WtwavVLgvg2X1JMGCATY=;
	b=E/vYXj2F/xgGNy4V2zUaKjtRdCg0hgvFKec6rBix9vyJyTUuut1A6C5mBUo97vNc
	LH26s8r/jFOgELjaJDfQwPmKSn7PR4NTZz6eE6TZifE4gT2nBmSYxM486pSYEHEa83J
	28dYU2UfN/+omcjFn6cxi16+Lza/lsDroYfGSZGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657573012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2QrB+XPFx3R5JG/BnunrYc+WtwavVLgvg2X1JMGCATY=;
	b=IyAWDWKNPciP//1hCukOTY3a5qpG4KaQ8EYpbWAlL6RwvD6wc9VOREWK/ghvPfmV
	WxuQg3HmR7s4d1Dkm4rL4X2Y0cC0GW3g1+a11a+O5isbYgKmfoJx5FXBkBlqtdpheeB
	TrDiEJfQCdS1nF0mLCkRSm6y0zA2Mmc+eG+iK+MY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef0cf38d-f7ac1c4a-ec90-4f82-bc82-0b9e769ad9e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 913e08ce328890c611f2fbaf4389019ed9ba8a9521499924426a5887984e646d
Date: Mon, 11 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657573012
