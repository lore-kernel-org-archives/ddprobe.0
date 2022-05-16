Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B745ED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652708339;
	h=To:Subject:From:Message-Id:Date;
	bh=j3jFkhrFAsBf4mgoMICzEJoGDdMvhCipDohw22e7zXs=;
	b=dwOqLC1fTYBAr+6OSV//qLJilWrae8rhyNBIdHRPvspv0DTmPuXBppQoUxsdTrRe
	aeHSTEYvAo8x4LNeiN5SxftEHIZsw+dyzaO+KngyROrjCkYIbvKQ/OEkOokVh5S+GEw
	ny0IEPe9adybyiIgJVHAjzMiPOqKWciVNCTyp5fI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652708339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3jFkhrFAsBf4mgoMICzEJoGDdMvhCipDohw22e7zXs=;
	b=Y4PX4EetKEhWaTJJacdsO79oKya9ZzUu6yH1GtoEdGxauvlhEsnaerZF597cCes1
	wnGP5BxpQiB6oSdJNLI4C/pcldWduiFGDVI/OYN7PbjXzcbEZgSr4CBlf8Pw7zU7npx
	0QtIdXBTDIJOaNmu00p8HuxJzuSTSlvgqj4tB/Fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd17ee52-c071d289-e410-4b76-aa63-c24d246229ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f83956f76e1be83fdfca0a794aba5194ab931d7891b2d9be2642b9d3232343d
Date: Mon, 16 May 2022 13:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652708339
