Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3562563
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 13:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654089959;
	h=To:Subject:From:Message-Id:Date;
	bh=6NSUP9pipaMy/hu46YvJAx1MsUtxtKA0OFtA4SuGlSU=;
	b=jt8oi6ZgNhaZ2Lrm6klsGcb6Pdf874mfYBML6HrTVqrhUftBJm8KstnHgA8hWE4N
	BzDEVdQoyHB+f4VTiWvXOy9t9SZSqLJKMvA/kQOPNGpQ2Rzs32CxgknW0RGI4dIiUx8
	MWILFkEWGD4Otmy6slNXnadyR6tIeSSOYV72JpaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654089959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6NSUP9pipaMy/hu46YvJAx1MsUtxtKA0OFtA4SuGlSU=;
	b=N6NmtKoDJ/QnzPeUz6W6Gjr5h0nwaT6UQR1Z8HJdAb2JTLLs/jw0ceyTedCpSyqQ
	An/ZR7NZWgn/+H/oM58l6GG1hpie5Hp3iuMBJqLt2w1KpSDPuwrIwsCVA5+ALrYrUFU
	GE5AyTBmuQ5whqwcp8U9iSQioWhaZHRDD22+v+gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f71c7a9-13679aed-9c27-4557-8e21-8c893be63f0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff5a326646d906382d90d6d6c327a4e9550ebb7fcdc0690881ad93fc09b95e2c
Date: Wed, 1 Jun 2022 13:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654089959
