Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A65D29B4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656866812;
	h=To:Subject:From:Message-Id:Date;
	bh=6aPWeexWN4ikDMGPsJ46FaLaYR3MwCypgTzOjtH2UzE=;
	b=jYqSdBzhmCOTnuEbjemmQDjH+kTjr57P5QqS5fgFOi0jUe85DJhaWY5ELtXzK0nX
	0zZQhwc5y5oqq8G9qvPWShgMPi6CmGZ+5aQ5usiEQbCfYbyIg/8qdGd6gTDHIcKiHrg
	1G26UVQCqiNWWLnUtZDluKNZpJUSQnAFybyeiIvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656866812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6aPWeexWN4ikDMGPsJ46FaLaYR3MwCypgTzOjtH2UzE=;
	b=YtrHXhhvZDHptxc+H3aEpL5oX3oJqG1BaynhRMqKD7tbYGr/T5UV/PE6oYGFqJRV
	hX39iBKGoQz24ClAk5L6zNTKS0rQuSF/dJU4KNCqP6S9p0Y+t2gtWFCkkMdiPomvMTx
	Cy4RL+os1Bxzy3P5nFQtXIOR1oyfTlwrN4vA35ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4f53183-570caab6-78a9-42fd-a7fd-b9838b9c343d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fdd09c8f8a49ffdf87d7131ba1ed6223e020cb763442d687cc8d78bacdf9c82
Date: Sun, 3 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656866812
