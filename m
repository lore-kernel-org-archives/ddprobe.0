Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6003217EB
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 04:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="batOSKn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1376C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697170628;
	bh=b24fYD+2x36l4YWat+gw3OH4ePSDIYWDkiekp17KQz4=;
	h=To:Subject:From:Date:From;
	b=batOSKn2J/mAMBRS+QQ3ThAjZ1QWiJRWC8VawbzyWezY+AEpKemRuqEqJHF1L8Ay/
	 fU4wCqrrfo7+TTgSHQ4jB+izSMDia6EphkJAGjzKzg1KxoV1a/g4+H/EekewPC5LS+
	 fPb90ooQB+fhWiPY/scc44AUDzPdq1Justh1Pm2OEG9F3ubI/vozZIOyL5xB+0RbK2
	 enTkabxzFIWJB8Pr8ueSlybCgn5Ucq0qopT0VyBhBeVdoTZ3TTGQzg4XB1N6pj2RDy
	 0bZEkTXJ18tYcaY5RA0D8KYFdAjpQLG9mgEZUUQj0TFEb3m+e0PR22qte6ECGoOl3p
	 aCIh7l8eiIESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1347CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169717062869.8539.8831593761978256135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8257600cac49a1f542b13b80e5732240bca4d4f9dc05243cf83619c5639ccb
Date: Fri, 13 Oct 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697170628
