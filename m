Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B6810F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659762052;
	h=To:Subject:From:Message-Id:Date;
	bh=/SiP2lViS/2cv37JitxQgR+/UoUzaiT/o+N+SS1MDEc=;
	b=i8t1+nUmC9osPVzNE32GSzIpFuierklGPCl0VZqWwVBD6Csk72NvLOXRtkQ6sv2o
	960H7JoxbiJyg4cb3rHW2OIDAzQQo7zXO5Gd+gSaAg6EOPON82dDUnQNATcTxnfv3NN
	NWM1cVLx0HIUTcS6+wEzB6ekYB1jdzPnGZzcVnPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659762052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/SiP2lViS/2cv37JitxQgR+/UoUzaiT/o+N+SS1MDEc=;
	b=eiVyWTOC82sq2uPhdIfZobprldjTkKRS5U//Dim0INokN3vsXeYy7QWa7hDgHnPk
	DzdVSi7J5uZHF+X+y8W5nyE1A5///X5sT1AuAVOWJYzFihc21Cjbxidl7RhjT9vP9Y7
	9jBW4pDXeW5sop/7NlzhaYfDgRtrwRPS2z1nSfEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271870dca-f34375d3-7aaf-4bc6-90bc-f7fa2d89cfce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95dde3553fae556c0a3c99dce182d6e36ab8f5a1b7d5ba876bcee4790a60666a
Date: Sat, 6 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659762052
