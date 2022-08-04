Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD8D6AA2
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659654052;
	h=To:Subject:From:Message-Id:Date;
	bh=9eidPlWsGJ0NknRFYoBUlJSwZquBGSsqeHc36O0McaU=;
	b=UK1MvjmOpjsH/hIonTtygBQfqUI1csgigsSqIJapnHV8yMUx9942wX6J7b9qrbkV
	5LSvEnnCI3fh2ThVzHyeOX8EHrAR7oexD7j0dI8/PCtd19VNZah/fOPzLBlC/Fr4z7o
	TRJ4fqRSNt3KEnNpzD5fCnPPHvdZDKnsZBAVahm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659654052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9eidPlWsGJ0NknRFYoBUlJSwZquBGSsqeHc36O0McaU=;
	b=MnrzAzxTLgpT2pOnChNVvPlKQm41tJDv5yYGPwcfGZlxb1FG+JyW4nCo/5XKaQ6+
	NxWLDM9BDMqEl9ATqx4o3wj1IykI0WomLyQFOSyQ+AprAzByz8oR8fqnRORiz949jzX
	3k+DPoSvsWli9T++yqh+rIcEzQeuB7G1v+CP5FvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b171b2a-0357f7d0-6af0-4fe0-939c-fc606fc62ad5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d6d928c089b634d579cb325de48b0e00d8e376ab0bde948824bbe3514b3794
Date: Thu, 4 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659654052
