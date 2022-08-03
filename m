Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7706D366
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659516652;
	h=To:Subject:From:Message-Id:Date;
	bh=c/j1z3MSfuWi618l6W7sSWjnk0I++xxYPp8lRRW2MwU=;
	b=fLNBJ5k+90/fQfqyHt/4bNYfW1TN7OIU+ICsNeaAwywWrajCcuUyb46zJis/V0LG
	W+UnKoVAaLGjGjGc4fGw3UXXZ7wHi4KDpWqYdc/8hkZoUgnXz0lAMAPZ6P5/rnGms3Q
	tymHPhbyWcBLCywObqFMzaA7V8PjgidYV578MtIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659516652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/j1z3MSfuWi618l6W7sSWjnk0I++xxYPp8lRRW2MwU=;
	b=UzhQ5lBaG+2LSMiVLlCInw/hxubLLhgMvDKIxsvfnbaLu5LHmnuZOlMb7Mdj3fn3
	awvxNzTg64vUWTCl66WXRHIKmbzmkoPMnus4lSOH/CUBCs0/Xw76GFDrY2s3AZosiGG
	6N4+fRYSZt772brbZT4poXrcuFN3dvvtPKqFm8ZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262e68c7b-545ab797-20f5-4086-bd55-ea972b9c92db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23c8fbbcf8b90af1313fe0628e546b2838f2de9ec795abb47c3c11d247525c39
Date: Wed, 3 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659516652
