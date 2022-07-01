Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF19010F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656649612;
	h=To:Subject:From:Message-Id:Date;
	bh=baPrUPkLBpwuHQUqsP9Ob9R5Q7PWjTxkfaFiNrW+ojE=;
	b=CeZtdqcVmTrCpxLtUJ7DztGaQOjJPnqzpze0p6GrxvBlHZTEk6YG2PJFMy9uQfF2
	P/AWs3C5w/XH8Epce6h7HWSjYq8rk7QV+A5NieYa0qSyjEJFg4gLH4I00yL7XK2bkbv
	VDqt5wfIjGIHJwUOO2+yW6yb+ncdmsJVZdb/ZtYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656649612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=baPrUPkLBpwuHQUqsP9Ob9R5Q7PWjTxkfaFiNrW+ojE=;
	b=OzVpLki1c9rUu1PpOPNKGxhE4Kn+0jOGcZ83iqpiE9AW8sgHkt8DKv+FKvxo8ZuZ
	HPJX+39jr7MxyfEy828vTK9iYm4RWvuIYlhWPXIXt8LAldIhEI7cgibLVrbUnRqsThF
	7EEjJSuh39xApuaDuB2A70kL/axM/JepQENeeOlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b802fc1a-63fcc1df-35a3-479e-800f-09595be0e79f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 889c881a1cace5f6b4d42f848fdc5406b4ca7342159224bbbe6be01338da418d
Date: Fri, 1 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656649612
