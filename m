Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFBE57C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645308685;
	h=To:Subject:From:Message-Id:Date;
	bh=F66MfV2r/taJeYcVnLdnqv844UusbTjOX+hNcRaPmgw=;
	b=Qd+d1eKCWFDh1MNOulKF+C5MoLrg/ozOoaug3u97Sg692z2kj7ixbmRMYxSZXL+c
	S94G5WG/qUdxA4DLEzOT4s3ajTLZN4fE77WhZE7JffZ0P6+cRVMAu5Ek9lN8jUb762N
	lIH0CVY3inPfDnJe1xsABpDY1CUBzlhTdvneBa0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645308685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F66MfV2r/taJeYcVnLdnqv844UusbTjOX+hNcRaPmgw=;
	b=TNFeFAZWEv+kWYjp5v9r3ZOCm/WfK7bPts1dDeLcCJuR1woplcLS/okCVw/Y6Kr/
	9KYAiJAE8SGN4/5tMD3PU1mgyVpdrIv3ZcjbKlva/E/o5XPpcp3i1athuig+HPGUWIl
	kE60l+R+jeEnIA1YtkSm6qxkXD0PiI+L9ptB7m/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f140a29e0-cc2bdace-f01e-4991-9952-5418b589f19c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21b3dad660eff054889894967394272eb8f948633a31b0b49caccc17e4be508c
Date: Sat, 19 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645308684
