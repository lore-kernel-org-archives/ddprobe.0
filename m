Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC187B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 00:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648598938;
	h=To:Subject:From:Message-Id:Date;
	bh=dRVTys+94WJQxS5Xk7v5gXyDqLH9olivtClBGVkva6I=;
	b=Z6gRBcgSR/L+UgEV7LH6QCEC/HC/hyHeL25ThuPkIWA3ls4zPmoPcWIceukYjIQE
	sWu2G+fjFMOIK7pEtYsKgO6/oBBDLFAAzPMSy0xjQY79psjNPRdaodzh49jfXr6rMaS
	zx41ndxcBy2WrHVD/Kp6SmIPm7F66StUTvEbxGMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648598938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dRVTys+94WJQxS5Xk7v5gXyDqLH9olivtClBGVkva6I=;
	b=Jygd21/HzmD5Iln08vm2boAfmF+vXZyVG104xILWSeiKehoEEq3xFO7+hvyFRO48
	EEtQOg6mNswKqXc8jnwcugj8G/uwwHuTeNn3hLU+nSq0cdgkfJXlwSXGJsvFNEVaxTe
	aX3DblZXUlYVFA7z77EY3hVAejTQO3PiI8ucsK/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd82772cf-8fce7e56-ae6c-44c0-a154-a05ed48a4027-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad9477637d33142a269995610eb687e2a7dc50fe04e9548cc44169b1eb25b802
Date: Wed, 30 Mar 2022 00:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648598938
