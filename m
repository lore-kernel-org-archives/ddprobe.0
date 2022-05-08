Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BD97E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 00:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651970818;
	h=To:Subject:From:Message-Id:Date;
	bh=Dmh4TAUsDEJDax61E7e6VU8r96x+O6GD+x1tZbilMAc=;
	b=JO7qh9/thFiZ/KPsGlaYJP7yfnlXW5OJ4PYGDvV7uxvx1tzx13rmTSy+CeqHmDlF
	gQEska3gHBl+tuZAgQ7M4QhaY33QAv5cRD5j8prpHCehdbe/sJ6uj1meNtOBQlfKesj
	RMxBJPX+WkfGAu4xBmYjXYf4hvT2bTjzwh/oMpRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651970818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dmh4TAUsDEJDax61E7e6VU8r96x+O6GD+x1tZbilMAc=;
	b=Im+phsTtrxvrHfcQ1g1lD47IzqmuH3pO38HhhBHYy1qqKsTHies8yRhDh5DE7g6I
	xVR3eE6QnaUGR5kwxWE4trqBaDPzdcVyiv01t22kmo9CxWOYm4vyGLMRpH/evyMt2C0
	SOot8GfDWuDKN7E3SfuKf6xk5CF4F+w7JMI1PrJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a12240f2-38e60577-2b76-4f63-975b-e54fbba232b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a70a6a072d16647dd874b40b56d94ee62dfd102e6a21b356874f0cf28bbf32a8
Date: Sun, 8 May 2022 00:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651970818
