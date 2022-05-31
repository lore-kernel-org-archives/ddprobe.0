Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4F37E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 16:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654016039;
	h=To:Subject:From:Message-Id:Date;
	bh=tTQR5kM1RwTD1e+e/EtLQwdns1FO1n5XXWMKucZFaMI=;
	b=GxPgcODpSqFNQZz0yX01kZNR1r03nf7v3nNob0J+fV5i1ELl3W66q5QO9xioYUKb
	ZE+poAdmrzuaroYukYE22QFMGEp2UWJB0HkdvPFjKq/9FWUjkGpL/hgPjPgJZZIkxb0
	TmHlZ7C3DzYEdjGBRVt4aPJxMAmvXYXZwvT/ud30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654016039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tTQR5kM1RwTD1e+e/EtLQwdns1FO1n5XXWMKucZFaMI=;
	b=GoJQmnUH+VA6MPfgTu176uQTz0QNK6+qyQdiQ0lH5IABIhfKRFbwhqdf74dcIJSD
	klLZbA2hVWgc4KgEiie5JpzeLzhoCiMmmBsA+U8+a4xKC+NceggnvHVpxjT4nNiKYoB
	6cHbB9iLrj648tq2NtcyyF5bGVwt0wlHPkSqHjRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b09d94f-5df65fe8-999a-4744-86a8-9337df1e2996-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6486cb2229039c5ce5d10233aa0ee405a6cf7e992150482a0c84fc9e9f7a00ce
Date: Tue, 31 May 2022 16:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654016039
