Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE8F7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 19:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655579459;
	h=To:Subject:From:Message-Id:Date;
	bh=vnu+0GEh7/CGnYmDmbcBF8u7xK2CCVoVKG2IDCSnxtw=;
	b=TGZTqdD8DLhvdZAgIJd3T3xiM9t8Mp7ipN24PEkQto1/6NXhaZBPN1r2T4xzkSET
	2LERBzd4SrEfvXbq81YibcOgqob0G+VWehTiWMLm6wTiAbixbdPQ2uGAAyJloKOZtgM
	xocmFXj4Wfp6QBm/VUqNeeOrEqQVkueZz+zOHFL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655579459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnu+0GEh7/CGnYmDmbcBF8u7xK2CCVoVKG2IDCSnxtw=;
	b=TpYp2zD4mkIOMm45uCYyLgbAYhwDgTu0qbwtPTYHN0n/2YxoGYgSQ4hEfujVvfIF
	+fDTO80qN0CcyeWbY/kZsl3ttritzt7+Rbr/fEBJvG1/XtoPSkVGuR2ukRvNyWXLn0r
	KWYrrnIS1kXuYnbrZb1Ktk8Oj/Sux9+1rITCm57U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817839be9c-3037d63a-b0fb-4988-82b1-802ca1d9950c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c5472fbce074bc985ef66010ab660bed9446834f78cd520a704f76abf259120
Date: Sat, 18 Jun 2022 19:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655579459
