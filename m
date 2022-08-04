Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712E86AA4
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659648052;
	h=To:Subject:From:Message-Id:Date;
	bh=wMjYGMJrWw7+oYmjhUdBoKXxl60eND9KC8upN7zZEGY=;
	b=KHmOXQaPFNnG5FaCY6b37MDmxUuPJTiD8Xi13w/xzejrRUboWoxV2O5WU4pMsPa7
	zmMOBdfUVMzQQ8N0WkyBqyXqT0yVdNU07TkWPtyVTiw3K16nSLAqBNbb9UEr4mN6APA
	T7ss3cBbcS6U7APXaKTa4CQV9/8nchQha1duBh3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659648052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wMjYGMJrWw7+oYmjhUdBoKXxl60eND9KC8upN7zZEGY=;
	b=d6ak065zrbjygGvSh1FcIpqQnoP7tj7UKoyPUEFTrx2pLOht0rCiaDHu5ApLhs8S
	dyx3LfO4SbojI6aoDafypQ8bWKXYYxPpyA3kwLU/AFCBE3a1X5gWKc8os/dEjfFT2nl
	LpjK2zmPU4SSs20EJRj96ug6H4B/D0J0gPvBWGLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826abb8d75-035cc6c7-a8c7-4a9f-91d7-eb739d022b6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d202d99f0f4d52c3fd76a4026bbcea2fab4f9ec02f9e1e37a56e7a39b748ddef
Date: Thu, 4 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659648052
