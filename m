Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BF42CA6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749187194; cv=none; b=gPJIZ6TC9Gss6bOtaSNQP72PHL8nqs1Qr4cN+sJMh7XC+xtrVntuQwmmYHYlrN0RzGXaM/wBS5EBfw0bug5+ykiCNw55RcKfYcDTsicYlyU1ScOqllSxvTpKv17AgWwpDs5TTo2MMTb5CYTtnMs0q6sTNUCdtlvUqr0yB/gVMgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749187194; c=relaxed/simple;
	bh=9E32AazTrk1jWqDadFT84REbBYSrOZ94gMl4V6w1gTY=;
	h=To:Subject:From:Message-Id:Date; b=hfFuTaSs/vTZ2ilXe9D4REJ6h94casyYc1JA1gvCkkTXFOO8xnkaGW93mqiGn8TJypnDhHQcJCn2USbgPUbNQb2rw5/29SKTBeuXaa2X3+evC06XMlK+Z1GwbZxO/XQsESoGdV8RIgrCuUIdSYwqh2lrE5Zveuo/xr8CvB6PhYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+FnwXGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+FnwXGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ABC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749187193;
	bh=9E32AazTrk1jWqDadFT84REbBYSrOZ94gMl4V6w1gTY=;
	h=To:Subject:From:Date:From;
	b=C+FnwXGzkTMbWhQNKcNj+zzZqwAA4Ut2WqPiGv6Nr4yGXCA+3nODUuqdcvg93OWS7
	 UQx1khhe1djVLusMvR9G2TDl63lhffTo0qKt2vWa8CXIxvmwPDSA9dfsgnDRJkmtAC
	 FKZguTHnT1EDXBuEq3h4qamB5F5VoTf/EDb06YhGKVgtFTxYBogep5ElsPcPeX5LPz
	 JnMWP7XPIhOM4VZQO+yM6jFDsYKtxe9GfHKObMa9FoKv6z/AH15g234X9WaNAc6WCa
	 A4DV9xNeesch0NJKO6ywitkKqsZrZ8i+wlKG7lwbv3gXuMdkI2AqiNGpC0mpkGE4AG
	 dklz8q3MPaM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DDC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918719357.7195.15921729945638651276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a223184669349da7f39ca0643ae30ef0e70aa6bd1bcbe35b68fb26705f4f72
Date: Fri, 06 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749187193
