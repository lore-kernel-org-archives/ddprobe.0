Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D8D7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656277012;
	h=To:Subject:From:Message-Id:Date;
	bh=pzPVtT2nqWTSMyCJCenOWOik9R5f8r8u8NkRcojZOM8=;
	b=TCSEoQUI8nxx16ojCJz+inO2bCqQZ+6kV1KzXUc26Vq6aWCmNy8CCKr8cNh2WEHL
	i88xXrKGDD9H0r7I1IRhjoTUi1u/QueHpP3n3UuzqG0vuAsm1L73mE30IvIaGg2JBbZ
	bn23jH5s4mqweVXVAT3sh726pryNpfkuqk3iai98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656277012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pzPVtT2nqWTSMyCJCenOWOik9R5f8r8u8NkRcojZOM8=;
	b=jquJSXnLwIq39dn6j5XvocFtA/ZkBUChONiPnV6hGjUlslFx7aIVHyLGqk0ynSFf
	k4kvwarC3KvzLfDMsLERikj3YdtXQpEDqNleOj/aebRyo+9x20oQR5eo2SHB4Kp1kEY
	KOuqOUgjXDD0YLtyGPmt5+rsR3SoveH9yaQUyisg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1cd8f48-2237cfbe-3f68-4ddf-b200-2a38400f74eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6284b93f14d7c321824250bc90847b934925e2b0ca2d3606df085cd4c4262ef1
Date: Sun, 26 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656277012
