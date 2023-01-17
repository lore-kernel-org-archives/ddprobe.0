Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FA2EB18
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90E11C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673994087;
	bh=pB7/I2kFLh4/Wd++LAmXlXAqbGi/8GWS7bcuWs7mMAI=;
	h=To:Subject:From:Date:From;
	b=A4TSrqqQgp9+skxdVgxn/J3E4LakVrs3vnHlGc74SoXCexn/kj2FYcFAkCoNV+Z77
	 GY909fp1nHdQwzCdckcsY8n+PeLNMxbcPsxArGimd7mmbQ08105dCaHDPapl8BmXwJ
	 xEawJgPsTwNJ9DhEFXFDE3YqHxpbuHqVebsef8JyTayVX/cJAVpNuRfpYqDfaw/ceT
	 9baI0Ln0Jj2jgXQuWIt0DZBK0Lw/o/U/xuiVX5+C1iEpttkod2XHNwElDfiGYkq7+M
	 qDEVXmOqWPFEk3yqofqoMOLb7PbYSQqyLbBMaADfhSIwP1jdOKFhgTTdR1g5dcODec
	 7jlje+vaEQD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D340C00A5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399408743.345.17126129682608552973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee2e8e86a0e069d284d0c46a2bec7df4c826b1fa7d113660282551ece3b98dd
Date: Tue, 17 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673994087
