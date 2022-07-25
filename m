Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8CD7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658793412;
	h=To:Subject:From:Message-Id:Date;
	bh=/ShWPQxJFcijChkWNuH75jrsbKOge+eA0TDJKBQiKMw=;
	b=k/1fSrDTxEhPge6vB/gomfsE2RmAmKjbo4QnKeCqESfBurD+vOn4M+WyznRAZCBJ
	oHx+I2H6SXyiN9NBiE6bNgut/9uP50liuE5+ODuIC3kQj2xW4OIwQbfTgrguMojvlF4
	qxyalG1SWo4s0B1Cnq1x9iE7KKpTS9SQYG4f91c8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658793412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/ShWPQxJFcijChkWNuH75jrsbKOge+eA0TDJKBQiKMw=;
	b=a+6YiffhDmGh5AxN0F6NoVAuJtKShM3d0MvjhM5BeiXiZuICHIMoqJ0HGTuI4tBg
	aU97ELw7BML3p/KV5Ld9v7J93vqKy/pzqMaVdjjT/l7bhgkK2nQEOtef39gvBDmk7Bh
	gEVo1T3uOeqJU3ANiFS1zirIyTAhCx74gn4IN8jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237cac6bd-b65b21b8-8360-409c-9dfe-887b011739da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccaeaf41370ca601d012468a9925e8411d63bf92dfcc6fd9dde5129244306af8
Date: Mon, 25 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658793412
