Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97CA4638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660298452;
	h=To:Subject:From:Message-Id:Date;
	bh=+G9JJmS+6Gc8tEF5V0JqiexjKPQn/tfonOvzIfk+Uyw=;
	b=YdTE4qUJOagBre66kCbqBDqZGFharLN/khy5HlqVsMywChsfGsGoW4vt2wrFhZ6N
	FuOM4z3JDOLHDsb61B1lcP1kIp9n4Vai4YRm9PWgCc9yvTqTxwsulOJmkFRVt2sNnyU
	ctaSGPIqWlBQXuhSDPG+W4UZcryHxUMdXGgY4Lgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660298452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+G9JJmS+6Gc8tEF5V0JqiexjKPQn/tfonOvzIfk+Uyw=;
	b=GAC9n0RxdvhPmVQvGqcPh2zUMMoAyhOEbf66nRIb+OCAb4myO/MJGznk1twFSNbc
	1aVUMddauc43tKf/XhJWMr7MeMPBbOb/ur8ylu+eIh8hzObifMJQ/gMgaHCz5nx79O2
	YwuNoySE0mL6bFsSGRQTxKeslCGESh4fWoMLKasA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182917fde6e-48d60f46-9c44-435b-84a4-33a6cbfac20e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 867361496045bfee9e8f8b31116c3c3c9ac54a292bb87594f2bf77c3e105aa0e
Date: Fri, 12 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660298452
