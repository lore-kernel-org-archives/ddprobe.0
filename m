Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4919D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659388252;
	h=To:Subject:From:Message-Id:Date;
	bh=dMD/HjWyKe1oQMhpXCXDga+2ttZ/ezpjtZJmYQ9W1Lc=;
	b=QrlZFq3SlLXPclCddoGt+pi+EEBQlfd3THqEkm/kClvEVQO9Y5ozCLaeTg9EeJVm
	TJUkqk31DmVwAtNic9pz0lfPQOrQScZFCaM0Hy09HVVkonOgKH7YG61GlSLnaZeOEC6
	VD7R4g9ZJE69JoioZUOtF0CMtSGz7e71eDIfpXbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659388252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dMD/HjWyKe1oQMhpXCXDga+2ttZ/ezpjtZJmYQ9W1Lc=;
	b=hb7Hux/R4PigzDt9FOhpF34oqy5M4S9Bmfj2B0gPdZ/EUaEQK7ArlDVRAOazhoJi
	Cr0Tv/g5rdRda/jY4Za0ZXUFDbMIQlOflbo90IW3R4wk4h9+Eruba4L3fne3r2rEqFB
	yH7TKbTfZ+pde3lEpPZUAnZm1lP9UPx74vuvMhfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b3f518f-282f5562-8107-4c64-bd95-fbd3efd0f7ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ea45014bdf2ece8e73d917a1149a9a56484268f801defebb02fc5287296605b
Date: Mon, 1 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659388252
