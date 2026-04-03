Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6302B24676D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775203534; cv=none; b=OH7aN2MTq4L8KtVxMbPOjwvEhULqle0zUBGdfFPYKpi6+PAiWxXFi6CdFvn3ZaUCkvsKjuqDXAjCotmuMd48nFIweKmBB7a9EPUu7SuOS0/zi2eiOk86aNWfJJEwM0caDrgj4QNYvsWNlG21cJVgjY7RWBhqAUzlFcNYeQJhzZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775203534; c=relaxed/simple;
	bh=vLlqsXJOKjhqxFyZmNV/Gst9dMl9QZ+LLieI+Y5gZV0=;
	h=To:Subject:From:Message-Id:Date; b=ESIbERHhQwkNbLrl7uEOmEuGnjqFUJS0qk4JRBO4SBmNT5YmcUiq3kfarbSffy2BxrMNohoe8OtxMJcQDQeNNS/31zLn9Je3jLK7CH6IxwbY7tm3rzjtY9udQFgg0LkfIFRfDJXn/6GQbBal/EyAI39WFqDulq1regXdcSZgVsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3tLDJ3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3tLDJ3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB52DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775203533;
	bh=vLlqsXJOKjhqxFyZmNV/Gst9dMl9QZ+LLieI+Y5gZV0=;
	h=To:Subject:From:Date:From;
	b=j3tLDJ3tgl6qxO+oB5QTb013xvqCSvj2BClDDPWMANL+pYZ6RTUBncmzlO23LQ1P6
	 2GlSfcaZdcLYApax/BVbL1PCvdPCx0w8W3BRcySQPbBs/QJs5n5CT2ems+XBSWXexj
	 bntxhoz7uc3Bq3QQpgkJVKBSLH6Tbqul/7eakoJMwsNt3hQcBS8eUJo45FRMLeslfR
	 0cMwGH3ZYTIDRsBJXgS6Z1jwXobwMEWf/sGNE67ZMM890xqCbetjOKGXnZ96BF6s07
	 rFmkq2lyl2YvY8ROk3r56fHFJNv+opox1MYCYOhhm9buucS5fVFrPj4YGl50R4mr/H
	 FGgnkfJgnKWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60BDD730BA
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520353368.28417.7728033496442191347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab053becbecc045065d0fa2818813181fc96afd7300bb728cf520d35eda97f4
Date: Fri, 03 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775203533
