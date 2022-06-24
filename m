Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D123A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656050812;
	h=To:Subject:From:Message-Id:Date;
	bh=OpWs/1HHAcKx6PmoTM/NXaDTFOeOFFk0xyd/CSyIPKE=;
	b=f4FghnBRRO93xSRGmmGqwIaUttrD6I8CoZtjTSsSWmQG2mFMpnBFbGU09eiyPB7V
	2+ayeMR8/BsxHP37GZpkRNCTH13d131oYzdPfeuqKdVALmR3z29iEIruDYiD/PlCr4z
	btmgTrdw3V88ZKqulbtUHxhWrpRjaPhi0UH3WYgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656050812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OpWs/1HHAcKx6PmoTM/NXaDTFOeOFFk0xyd/CSyIPKE=;
	b=j37M5Y2dHKzHFf+Gv/PhXJ0tVLE6M1tOnXtORL9dS/qlLi0PwUCt7giOvaDVD76D
	NQBtZ07gNqE51iHJUg0gfHD+NoxA0BYdH8YAks8hZ3eISgvdUE1f2DDEA8V8TYlFGET
	UzDaPfxsoacJrg3YZUD0qorBVS1ukHK18SqPTuq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194520577-0582088f-4bdb-4fa2-afc2-f945fac15dd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab9ae12b352b3eb89b01544a0c1305f13eeac63878112c09c5fd287d9f89063a
Date: Fri, 24 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656050812
