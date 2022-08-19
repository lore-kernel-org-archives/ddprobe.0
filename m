Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622B9610C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660951252;
	h=To:Subject:From:Message-Id:Date;
	bh=m8raS6ej60eHHvpQyEZkDXvalGf/CUUmLD3PlJ9Wvyw=;
	b=ZrqXc1V6g2m+HRvzhWQZAqHOitUd0hrlJ2mosVrC9YTVCZDG9cFVe6aniBQ5QiwC
	j9zwHM3Dr+9+FZZdGszksAS+etZ9Ck3UfvAhaxyJTpQJ2Vl5LIEy30KeNLF0AJ5Q8JU
	OU/QPF4Ou+Xa+Ym9MkIWDUj04fsPkBAbIIRZ8gnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660951252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m8raS6ej60eHHvpQyEZkDXvalGf/CUUmLD3PlJ9Wvyw=;
	b=gn3eU7pErwTOOCDVi6+KRAy6SUS1C1a++eIhRd/Qqh2dbTN+9mZgRv9nRQJjfphS
	vspgzGzSvt4nkmK3OvvCxyD+OWS6FkyJJbF50GJLwxrpHDnhcmMixZi4UOSnz+RnUjB
	0jw9BMtJ1hpafuoHuDQ//raC4A9/ZnKQMYiun0Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b868ce6b-82d35772-e999-4f2f-9196-927bd214b6a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a33294b875667bcde191c7785778de8e01ca6f864d0223d1d8ebe26fb36cd2b
Date: Fri, 19 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660951252
