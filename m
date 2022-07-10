Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163107A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657453012;
	h=To:Subject:From:Message-Id:Date;
	bh=uSMS+5ufH3oYZUpCT1lWqaafYtaz85CDiDd/60C3yus=;
	b=Pb3fiWCb7RDnmzhAqHH4yNHDkJrL7sl0GkXLVf1kG3vakHcvsHg5FHVZ5dN7CcY8
	geAERwboaar7N4Na1vkwHgNySC0p+zoRfB1CDnfZusVKgEPsDZ/zLqPBWK9uP7g55wG
	SMFuVWA4T5Ddfb0Cd389QU/pWvvU8SHUd0q6zE4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657453012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uSMS+5ufH3oYZUpCT1lWqaafYtaz85CDiDd/60C3yus=;
	b=LMtVlxt1yNtu1mnjAUulmBQQcL8GABcJw+h6JIxH1cwWllnhjQ3jQ8VdVxPYGYeD
	kKLxGuqQsKgx9Vj1wwkHf6O1AbKmpdHk3t+Ch6Cfl6ykvMWndnVujXffgJeWcg6n+Ku
	Q2IMNg3QJWTV+1my86dVzwgEGJece54xM8qkIvQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7e5e5a6-b5db1e38-680e-4f8e-b7ea-b3a0edef94d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f5fc6972ef0fda2135e2d938c5f27d1579b4b0de925b9da3091faa839901c33
Date: Sun, 10 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657453012
