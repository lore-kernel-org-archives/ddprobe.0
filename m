Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCD7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 19:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657310217;
	h=To:Subject:From:Message-Id:Date;
	bh=yodGkVq+gDx8FrYCFvpcjfnBZf+Ni4A8YTmfFtN4+bU=;
	b=BPNFdAKMIMcWcwtf1jWTe21APGKNO/ETya2sJbzLBkNvPkKX9ad0z8JhrYSXAqHh
	/FiQXFVsorr4D4yoOclvveu93Ixv94uw9qIDTW0Tv7r8CzTsKU9PmRrxDJDOPG3fRBn
	U3eAAK6k9Gz9LOATfK7TB8Q7QbtJE7mrEUbpZqws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657310217;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yodGkVq+gDx8FrYCFvpcjfnBZf+Ni4A8YTmfFtN4+bU=;
	b=TcWEHtZkWLY0aydd4wW3hYqAEqWKl6lBtwIAj6KBg03JGZXBGYOFpBpMVRg45Z1+
	R+IqdTTZvDBuxIK5dNwlJ5M6+YEClt0CC94f6dh5/gDGHilgcAD9YF9kGBSRViLFBf8
	9OrCy23juIbhNQYuhIbI88TSG4SfEIg36XhqKiqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df62f0bd-7b66c69d-2096-4b71-a979-56121266ca8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17cece4af78e5333e7b29fc9890bec02dc1387846a87fb5d48822c1a2c01cfcc
Date: Fri, 8 Jul 2022 19:56:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657310212
