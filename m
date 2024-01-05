Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132C220B15
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMOm9DJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE81C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704439096;
	bh=4Aoa3lpj7SywvE2X/jx0baw4Ve4cEYKEgb/8p5GtUkQ=;
	h=To:Subject:From:Date:From;
	b=QMOm9DJA8HV00vHE/gHdU4meO76cXaOI7K2oBZx5gCrpNY7F1VKZxomQXTXbwVMLK
	 OYkOe7CjPdfoOO2uyIEjn1UN16JiEsG/LhnloWI3rmIgD6SJsy6JIJ4W/AibzmJUyW
	 XFRMuuaXNpOUQUDwf827p8SGKW1Jk78Cx+QgScgZfRpkbNiJus/V4PdnJ6WhxRNAUb
	 sXs+mQ4vWRIzqrTNjconGUvz2NKrYfMROKVy/t2jiB+uI6PnCEyl9D+8vrEP3hPh5H
	 HSfFXOuJ1UcRpFuj4uXpzSIlkS/SythJ19JzQwHPQCMInLSS/KEK/eBeYcDCsG8VPg
	 iHBhjZE7at0pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64456C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170443909640.514.426886327325549832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7882ece0d5341309e434d21b723b71a3a0326fccbb1a22103528263a4139958a
Date: Fri, 05 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704439096
