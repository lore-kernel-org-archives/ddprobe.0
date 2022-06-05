Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B246BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654429079;
	h=To:Subject:From:Message-Id:Date;
	bh=Yw0ZW7qKehdqceaY7IX0eNjIgYbbYVp9d3/OVQXaFWw=;
	b=Bc4vquB1yHaCCtoFTxKtuASow0c31TmRHDXFXHreVWKj8ty/QrYKJPyDRz3okGyT
	t9G3IusjCaa5mXt0WGihsm9J4LpxKWRnzhnGJQkBhUUzN2jXyAoVASvta9vK1480zik
	GFSVqEjryTCGf8TrSNyqP/8FF8grSNVr5fJTbRGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654429079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yw0ZW7qKehdqceaY7IX0eNjIgYbbYVp9d3/OVQXaFWw=;
	b=RTmDzxZy2UsUegCkdrzSDwOcj8aI4AFteGK50/Si6LafsbLScFxWZt3EtMS/PCy+
	ossBB94NGrlZiZwv4On7vWgqBE1U1Fz7lVj/OzdV2DJTRIc/FsO3PYkSxWjPfTMtVMy
	0BNELIS1c0cMLEjZTMPp0G6+/vJaQTwFJqe9YBcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133a856ef-3761c988-c531-483a-919d-c615e91040ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a607314a3be86150106726e160cc9b3278d359e39e1d4b948cef32bd904b9d58
Date: Sun, 5 Jun 2022 11:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654429079
