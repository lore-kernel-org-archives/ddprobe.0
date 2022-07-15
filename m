Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B144C96
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657919212;
	h=To:Subject:From:Message-Id:Date;
	bh=6uxO+k9z9Lbjqz1aLA0SpnnyYrEBHZeQ7B9gGTrnimI=;
	b=LBH0/Antz/V9WlIouYybyg+Z6nD2AKGsVrsYtsyvT5dAjqwXHV4O5XdFmLGO9wGG
	69ZEDFNYafXT4pUn6HQ50nNqEoLj9cp/8tRstQd785Qvw1xuZADX7YFuFDh+qmOob/q
	vxoE0qhqPIqG6wwpSYzEr+Pr5BIHY320fvIib3rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657919212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6uxO+k9z9Lbjqz1aLA0SpnnyYrEBHZeQ7B9gGTrnimI=;
	b=PhPVxslPTji5c44V+hK45rm2wWQepyT0bMUhLWouprwsHlYowNA4bBj7MexNMOl9
	zl2XoKv22N6cYhRcRWnvWxmY5HdZ8BeJvjvlGAZ2VDArxFh/CZ64byWc69DYW3E4pI0
	7Hfb+THGt5xN20nBplJn7E6jI+48fPsnq+YjB6w4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203af8b49-2bd65aa8-e09e-4f5d-8759-40b14546557e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3db5b77ce5a51a0a85248c07af37717914c3fa1049d62b55e4479c4591332992
Date: Fri, 15 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657919212
