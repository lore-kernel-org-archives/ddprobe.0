Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F247A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 20:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655324399;
	h=To:Subject:From:Message-Id:Date;
	bh=eJ7Mu3S5v4FI6gJkIRmoUjzWOc52I5ChXhSAm+lCi6I=;
	b=IbQIk1dDdGFgESf+6nfz4PC5qAxol0lAWUrZxf6AiUCySOcI9K7gcrmeuk0gMiei
	TD5F3JxyiDiC1DNSwSJcQLbPqdWRNVXVm3S03nwuKuWqVRxA/3lIJJEXZVe8Qko5V4a
	0LYdAxPNKBjAe8I9AXCsi2exTVV3sZ6JXG3JoRQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655324399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eJ7Mu3S5v4FI6gJkIRmoUjzWOc52I5ChXhSAm+lCi6I=;
	b=GNXVj9g6yKxYFPfaHRcG7KuuGpRqTcqb5pCkWHBc4dMZnhOsCdM+8vUpdRPHH98y
	48Ps5qjXu1u2Q6CBHQ3Bu75BxLg4qsp+dHNqbH61OxOuiUQdKdqYEyQzQ+NTqbHzrmF
	Ou/hf1N+gWSVMkxHIc8mqbGeQkWB2OtVd0wkKqIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816905d6a5-dceaa223-d1bb-4565-bdcd-c010a57336a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9a87bd46a51e8a9cd58d5ada3a552cabeffe076e879cfd37bf537b1010b4974
Date: Wed, 15 Jun 2022 20:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655324399
