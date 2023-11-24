Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C05171A4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl2ozqSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9037EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700869096;
	bh=KhKm+xX2J3t6fD5q3iRqzr8EC5lsJgJUnJWaQhUGAWY=;
	h=To:Subject:From:Date:From;
	b=Fl2ozqSAQTpEjBaRIF1llMGF15ZM62Cq1oMrt1t/yJ31z5G7eYuAcFmIFSOue7qMJ
	 qNXXCS1D/QCsdr547cMyxEwAK820lX8B//yvU7JJwOAymHO/PPGv8gRIWGPz6bLgOf
	 XuI1RfiMlCBtAOsDpcpv67AMSyrq/fuozmnkmdYp/M+mpn3czUDmvSc/QROrHKrMBM
	 rkqK3YD725MxbFhuAIlN/1gDkOBN1fW7/1Czs/Y1cFqdGtHEpYPtcizImQf7iY0z37
	 ayjlDRPQzbSXAnbaukJKbPAsd90sTX6wS0/dEcjJ69Wi+9Hy2aR7xaCqfVk5/aV8Li
	 euK+veKnjDx5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F83C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170086909645.2510.10659567907429483774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a089fa33be1117143a0518e6fe20b50b4991be2704b427c75aaac8ea66cc72b
Date: Fri, 24 Nov 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700869096
