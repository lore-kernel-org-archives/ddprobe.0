Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEBA4A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660434052;
	h=To:Subject:From:Message-Id:Date;
	bh=Bg0Sxh7vYuv2D+6jcKK48wlnIqdYb3wIKMFGfywMlVY=;
	b=AQjWaQjJBqLtNQ/aIlJqcaHMo47et0o7GSwrmrIYTUNkf2AbaKCjSe8DBrfIP54u
	HB72LC8Gl0AHtyHBDXCD6qug6oiVSMeERIYnCKLkRmZ7NXZIS1vzD8zOFL10B8fQAue
	mPnbzlBfO+IHmoveyl3BOBjPjhumrWHWFMrHM+xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660434052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bg0Sxh7vYuv2D+6jcKK48wlnIqdYb3wIKMFGfywMlVY=;
	b=OqnmauLvL6Yt7TanPtcyLmqCiTd38UM3Qy/dZP4+WYdN7Q7IMk7oogXrrZhUzpmf
	+SNwEU1UvIDx7NcY07pY6xWk/xoCctJf64O+l54OsCPHuM/j/gsCr7YliA2MTtqTDca
	Brfw6c1o/Qt3BMNjiqwhaBD+uJ5uzb68Z8eibcnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829994f5e1-9c8bad0c-7884-463d-be21-e3dbfacd5c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab543005f2ee47d86c92c2bb425a1e37899423fe7b3db218382f3b436255160f
Date: Sat, 13 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660434052
