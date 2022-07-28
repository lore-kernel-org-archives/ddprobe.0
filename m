Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C80C1399
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659012052;
	h=To:Subject:From:Message-Id:Date;
	bh=8DJu5lBIrW1O7INfHwKWk/wVaRudvkbfv2mEBIqgO/g=;
	b=OqXiUnqMx1MktDqtsJT3skQ7x3kuYnIKZ1HGa+RT+Zj2eBokup5P1h5PCFlu7EL3
	F5FiJvabB7xy1Zri8hHallN0qZH0WHNzYQM8Til+soG3mot4HamNfWg0QyaUQP0VaSq
	zqKUYrWUwSVvjC7cUwur9n6nxMha+jcCAm3y6al8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659012052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8DJu5lBIrW1O7INfHwKWk/wVaRudvkbfv2mEBIqgO/g=;
	b=Pmd3pv9vB1UkVOaZTYnfW4PkaAHoC+Sn9TF51F7BJCGtBjHMeVz+wjFanp+Wa8Gt
	WhUhFsSREKYtEuvo7eVgUo03Ttrb7bdnO2dR3kj0KD9u7GFPazJNAMRK2IjUz6IWYbc
	R+IoarOlUW80vIsY5eeJkxpFbizg2qM28RxZ+KVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244d2f67b-58908e1a-8a71-442a-88f8-aad6044e081b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4572d93ad15d643a014696aeca95a91e1e7636ceba1156741d5a4a1e419f971
Date: Thu, 28 Jul 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659012052
