Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF02F2F38
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 18:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653158339;
	h=To:Subject:From:Message-Id:Date;
	bh=sMV63hGhAV/GqKmWQ41tTY5xhv6n3pogEstpwrd4Tdg=;
	b=lOMU0X5jTj5wq8Df+TCPng4vxpL8JeIa/pnWtRjQJrR78pKemT9iqbO7VURcLBWN
	R7STBeSTuqJSNbRX6RkXDOEVVS4uekmE9THhTzu/zA6/cPivPZl65EQQLYBPKZ+mLhP
	9m0s4H/i3dBCkBaJpmQOK58XMbctRl4ryYLFcVIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653158339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sMV63hGhAV/GqKmWQ41tTY5xhv6n3pogEstpwrd4Tdg=;
	b=AbylNuakmbMznbDG5ZVaR8OGbDBOJVoSQkFchvLlWnEYkQn240sq1Y/RdySsmjcj
	UcL0OG3v9O1EvTMzpcCr+jXARzzJSN/NpmkGCY1haFWA69ovXWuFgjqHjUVHbHpVHBc
	hv6QEnZ31dyZErHdomGMIkMTA5bCrYgHywG8Kmqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7ea62a4-f9a72314-bca0-4cd3-a81f-9729ccc958e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f71fbfa803beafb8af3b36d0a472cf40757ed993d4477577f29840ff678142e9
Date: Sat, 21 May 2022 18:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653158339
