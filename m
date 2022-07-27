Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1D97E9
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658925052;
	h=To:Subject:From:Message-Id:Date;
	bh=vQ2vsfeC09aFZdImOs5CR2nAFoO36BOfLlZtrh6l1X8=;
	b=FHig8Jv9zMkgM/Oi+UPAQQTl86mYfC6VO6AExXlmaDokGZ2ipXZRwwe5mG2l0mO8
	DmzSxFzKNe1u9+aDr/qvynboxGMBcS04AyFKs4gfo4WLcBnBJjQP+X84YduGbU5C6pg
	Go3Y1efLrc5AnmmWwO3DuwKTvnLwcG+I7mhVT7WU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658925052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQ2vsfeC09aFZdImOs5CR2nAFoO36BOfLlZtrh6l1X8=;
	b=VUI3aqLdAj8SYRw4zJAU6sA9tgQ1WQOH2NdUwDATD6198NtHcFVNg89ictkA/3eY
	xSOGg6QcO8GNaydnJff7DhICNp0FnxPKrb5OGV48opIo+9YeayJNNhg0GaN/kIpbqpv
	C5c92pFk+U94gKMlMmflMizZRSgv66bF4T0oEek0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fa3729e-c0bc9d6e-a82b-4a14-b363-75a877e8ad0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91e6c1eaa804dcf59852fd59c6648ef7dedbc1a90371304c086e474dc7f3c6e2
Date: Wed, 27 Jul 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658925052
