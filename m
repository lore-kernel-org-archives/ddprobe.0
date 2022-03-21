Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AD457D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647873685;
	h=To:Subject:From:Message-Id:Date;
	bh=6/vnnNvj0IeEmRthqOlyqoxzOI+3PfL0Xp9rlGwG7MI=;
	b=W9DDnZ/t9IOKpKrkAsm8aL3rjPR6b2ghloe+r9uDBRsvtvUhN5dDH2IsGlsYl8fj
	t6MgqtfV8FSPCdrxSq83brktphXv5sXIUckjuFAdX/LhCCAIJE8LDejX3n6mQRJK3z2
	vKlKdiNSaHHXy2mFFWuu5IurXN3pUU3oT3uXGr1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647873685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6/vnnNvj0IeEmRthqOlyqoxzOI+3PfL0Xp9rlGwG7MI=;
	b=CzoNggUjfjkd4QKuV3Jw+PJG2L5o/EnIrWWwhkGRujgPv9A/Wb2swHdw1jjuhiud
	FEdcU1WctHAFlGCUa2fbtvtw4M+TeMun38Jjbx2fCKakoMPk1CwUIj4a5oW+E7FQ+Ul
	LpYObxLkXP/aGTnhri3t8Ngr3lNDnJnKXwFhBVyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facecf583-8ede63e8-9b7a-4b2e-9d6e-bf1e1638409c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 812d3fdb8f51dd3bcda16facf6c41fef0d0ba95480d8ddb80e3f4031026c66c5
Date: Mon, 21 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647873684
