Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3677B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 23:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650151738;
	h=To:Subject:From:Message-Id:Date;
	bh=DfkSZoXE4Hn1kyY0YXJJUb3TZj9mpmZw+HtBNVjvBDw=;
	b=YPYN9Sk0TasbhV66PjFW6shB2HlYFNGLzUxMZNUc/rVPkNS2wKb12JXkaF50igm1
	syTOrOTtbWQWYGiUQpMH19kZfMtCGXyKU+haOrkAJvLeGsKt4C8B0D9cxBuIt0IB++Q
	+oHmJB2jKlCJctt+shQsZGxyvGZesh31+bwL67PI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650151738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DfkSZoXE4Hn1kyY0YXJJUb3TZj9mpmZw+HtBNVjvBDw=;
	b=Q4ctq9GBbzyUCeQda9nsm8nt79KEqlsa4PRJ0hpXt27xzqxfJJ1djOO1Hg9ydcCC
	Cqv86ibGg4Ey61qPsH+7AUwEqZgtbXwq2PkS/d4MYB0Pdy43TQZBYIeCYR1TSeab7Rf
	hqhALXHsyJ2I0EcTxUO98ZzIothm9BNFJ3HGf16w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034b54bc4-51d6e113-bf33-44ff-945c-a0a752270691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ab5d2e5e23bbaa7ad0eed1ab6eacac21a8144ae2586ba2825fd99f6348fbbc
Date: Sat, 16 Apr 2022 23:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650151738
