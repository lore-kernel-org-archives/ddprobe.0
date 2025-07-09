Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332422D6631
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752062994; cv=none; b=LAb+gIkiHQWDH+ye+exado8Db8q6vHwosMiLtk0yzmZJrEWrf/Hdl+I+ed8naxNZVNiEZdzS8R6BjWnNsrUsICrsyWXvZBgYO9IujdDa6/rcACOi7esoEc+d9jrk2Zo5rdAPiXjJ2bnOv5uj/Du4r005JZ72IqyPEjefHY06Wmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752062994; c=relaxed/simple;
	bh=4KGI3f4Krdqz8AbqkBTdmYMtM8FGYfm4AhToYQF8QS0=;
	h=To:Subject:From:Message-Id:Date; b=fF6fF+h4c1vSM5XD9DeB+3Cnj5TN9cqlW0Rw8VXdSz5nZ62CN4J8PMoRapUOGVg2hYinugP8Pro0j2nIZYNAxrjldTFfUchGtEhBVw/lxJd16eJ5+bbHpgT6GVorgBspQOddJLVkYN524Gu2dkd66a96VL1hx84i/80HJGJyho4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiO3LlnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiO3LlnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6661C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752062993;
	bh=4KGI3f4Krdqz8AbqkBTdmYMtM8FGYfm4AhToYQF8QS0=;
	h=To:Subject:From:Date:From;
	b=SiO3LlnVyerW8QLpMGhpuV0cnLTbGYAtrRIY9dodL2hx+yeaXeSJ+dfwUqZO4pmur
	 kkMFJm3Oq7d47jQU8y6RBmPU9TqGfS30HfuH+lLAB2qt1KRjtGZzU4fO3FXNAamqUx
	 7rF5pLJXDNe2JL3esbkKpotqC9k26SgOnkT3Jrlfrl0Zd03HamyJq5oTNATmYHBlnL
	 S92YKzGXHASl/Tyf14ZCaGpW3AvXJ9RwpRhhoPM2daERWAM8d5mOel4H2CggsqN+Pd
	 OKrfmnQdTQ0klD9pkWzNqWk3D1HFeoTF/9IpPcPSzKO4vuLjrKR9DXJfgTayxcZ8Nn
	 mm0zU0DM6m5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93799C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206299357.30138.8181633237694996821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc285134aea45866b7761be3cf9f1893f7f636afc8144b47b45acf01da2c857
Date: Wed, 09 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752062993
