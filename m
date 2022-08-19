Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787685C9F
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660893652;
	h=To:Subject:From:Message-Id:Date;
	bh=D6tVFCOd6dWuQUTaVlIHYc02405NkX5tgPEwf2dMGeU=;
	b=TdXFHdcxbXjTGcIwWB0JlfYzGclrDn8TKLtCn4mHKjFRyE4tOkkNHpyY/XzlKcod
	3MDBdlbXTYt3muGVivXp58d5suFRvAVGaOXYszjNp7vsHK8/xZzmdtHLKbmTZI8pnJY
	dJdFmeKjyCLq5rdWqYUa55alz/mu48JEvsoER1Q0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660893652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D6tVFCOd6dWuQUTaVlIHYc02405NkX5tgPEwf2dMGeU=;
	b=fGjm/SPUwJm+Y2i2xQayYTtPLqCC3KrY6gyLVtXFg86A7ZdUOVPJVFuMtKK0IX71
	+0exAB7pgCKH5qSe5Ug8/MNJeH5W1qfytpDYqh6zlcd4E/4XrkS7Y2LJ4tRByvBqFV0
	qw3oZ/LrUKsTuOLS+lxArpMIYkrn8OrCWC7N9PzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4f9e63d-743a5900-b67d-45a3-89b6-99e9c1731299-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce8a1b73bdac5ed8411772a870453cfc9b5b77a81f1f7a295f599f7a003c36c4
Date: Fri, 19 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660893652
