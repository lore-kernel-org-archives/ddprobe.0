Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AAEB362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656398213;
	h=To:Subject:From:Message-Id:Date;
	bh=ewQaDObm9+GVRxMV3mo6NJ5wlHsKm7h+qh7H0MVOWdI=;
	b=kfpShrUL67PQI5VS0jlfwEVSiup25tIqJMW9mCqmoVaSOmHPFTPHqeC7RYwpymEA
	7kVvxrES8Bj0YleZQCXGxzES3k3cmLKmnTgVi6XZM2OND0mm/5GCMh7Ue8hpcCGc9y2
	YC6ZXMTfZtJ8LPL2wC06Z5Lm43R8BHzQ5XcqkVNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656398213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ewQaDObm9+GVRxMV3mo6NJ5wlHsKm7h+qh7H0MVOWdI=;
	b=iOpPtGVLukJXzZo067/MbUp1FbtrCT3tUbop+1jRXp5unGYNXYidddelKv3TEEcn
	61xK9d6NyR9S1M6wwiptSlUTVFBAt1lSuA6/yvLRVirAA+YpJkDJEkaHAkNDjPEBUK7
	54EmfZF/T45M9xixrdb3wj6vYzGVIs1hCN/gOFxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a906ec98-36855c6a-eba0-4613-bdc9-338b602a5058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3d45250e306bbe791dbf92866f4ca686dd4a0596b0f5e48df8db2b8e4be297c
Date: Tue, 28 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656398212
