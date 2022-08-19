Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507457B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660880452;
	h=To:Subject:From:Message-Id:Date;
	bh=y60jCjnmbemNBxGH5Eoks8F9a5qQn5iPUEPaiu2tPFU=;
	b=ghvKeV55o/TWYYLdv3e2TqhObFvMECXG0KP7REaGHUbo9yqVj06pWglELIEU5nOB
	qIGUD3ENPiIk3gaf63Vmzz/MTxrnarJbrjRlP/mMP0xdLMOWEzTswSA90HNvTSSbhJk
	1fWLvBESnRtmWuS4Ccbv1pGeaeZOXor8QDbZiEbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660880452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y60jCjnmbemNBxGH5Eoks8F9a5qQn5iPUEPaiu2tPFU=;
	b=bjpDlgZoaah5wftcOXHH8yQWnbqArdk42xc0jwT/LfvPurxkGRnhni++yQ4p8zgM
	ri+wnStocHZ1Xu936Rl9bubAfchZGoUWGTDRtWIuydCApXjMl+3iXoKPhf+wjqqS2zS
	FuwwFjuV+tea/gm71F9u+FIHQwCKtb9LhG1P0tHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4307bb6-d695d641-3ced-4fb4-985e-de083b0c821a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 038243ebf9dfabfab0b20ac3d980d8c5a1bb42e6a6055cad31a75248564994ec
Date: Fri, 19 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660880452
