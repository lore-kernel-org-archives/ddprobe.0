Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715E52F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647539784;
	h=To:Subject:From:Message-Id:Date;
	bh=5yLdWUA7bFRyLxqFRgCNu6mdWRiy53c7W7lTr5N7vk8=;
	b=W/ZVs/hdP0ueSMpPaXdptAMw2Acld2ujAXMBwil6Y7dEOQIqDqe47flRIbnZ+WBg
	4C78ubFFD7UYWV15ApaSPzWWGJDuOvHCnkKukBtyJ18U5S6J7qsDPhQ6oA/WGlSOUzP
	gxUx72yFwN1rSUogvD2I+nSmp70g3aidKTABHnLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647539784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5yLdWUA7bFRyLxqFRgCNu6mdWRiy53c7W7lTr5N7vk8=;
	b=MZ3IvlzBBp1fVrp3dLZcyUmg0NQEaGZrMA/vxljvVfV0t7Li3Vc7EQPJ3DejJxRS
	sLYoicYItp7nMWNtxj9OYDNTF7tGKRGhGKbz7z0WRXKgqwRIyzpT0TzGkWoEtujioDW
	zI58ApwXoSx6SI52x+xQ5pIWZpU+7gVF/czTu1zg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99060c5b-4200ab59-b410-4a71-b352-594366941ef5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b960c6c46d3764c02615dc689c42d349815eb2110d7fa82d65df175ea7c78992
Date: Thu, 17 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647539784
