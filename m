Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A35367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656392212;
	h=To:Subject:From:Message-Id:Date;
	bh=oR1HbShK47MDtVbUs7XVmYbFeh4abvLi+ddjRVZwiBI=;
	b=DljNP2uU+GttQnGe5rsBfG+Lytx4jE+h30x7+LYrOJs9yXnF+WJAu/VjMRdFNh1I
	K/g9M2/ToPlLS5mu1PcCV7TcG/5S+l64EBbtnXb13Tkz8uiceTpwuirklJrioZlyqex
	pJpdt03zvpI1TlgspjeqUEZuYhqIdp9rnGnRYrUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656392212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oR1HbShK47MDtVbUs7XVmYbFeh4abvLi+ddjRVZwiBI=;
	b=PEe3JTuXt4klM6XGhwfhIU8wT/KnSIWQuPGVFGSJSTemH6BeMs0HwQitos23xJOw
	VTjt2a5M406O++fg+rskpsJaxcb7u4oAStpV6EXl76hhoNir0hXqDbLD7Rl2OaLc2Em
	XRsq85gtW0E9PshlA57dM/zoj7yhvDFpFej791Tw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8ab5f4e-c8ee5488-4485-407f-ae07-3e71f0b3422f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 213401451e807d004afcd8fa42e9c38e7b0c8a4fa15147a0cc68610078cca669
Date: Tue, 28 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656392212
