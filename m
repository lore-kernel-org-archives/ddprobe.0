Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1538F1A275
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763990514; cv=none; b=OgVgvrABdTQxKQExTbEZRXHsW7xfnmX6pYi+31mJtWZBG1qHkvwH+tIRCtcme+tmRNE7lLgSQ54C1sXIq0WC4l19oE/CRsV0j07SqWNXDuP4X6Y9UJeWa6BbDIERav4sCSRT9ZIWlERaSXVFSh3h6jks6pFi4PHXwFPiGjaNKYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763990514; c=relaxed/simple;
	bh=+Q5UaYdK2ZEfOnbSlPPyfCjMyuItY9DvNF1/Si1xogw=;
	h=To:Subject:From:Message-Id:Date; b=If1y2AjzQEBoY7ZgVXXQcMTg1jGm9C4YzEAFR5j2bWHDEJslaDMcEMGg+MQzUHWS9QnHkd5DoUoKBF+5sWat7UoJ79W3EDtxR+i8aDI9816M5HVmn1fnrAvNOFZNYGQJNkf2g86Lbbau/cKhRXfeaUB+ExSgyp4Fvz5UHNEcYyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhVrn8D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhVrn8D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4FBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763990513;
	bh=+Q5UaYdK2ZEfOnbSlPPyfCjMyuItY9DvNF1/Si1xogw=;
	h=To:Subject:From:Date:From;
	b=MhVrn8D+/E29LylK4ITIi7/Dlp0qJT0Lj8E7NbNNXy5dWMp1Cbxrzey4YAhv9jMYp
	 eTXRvpKUNovBpRZoxebAJJQyZxirricEYywDq0Bd/rByOdXJI4qcik5jeOIf5rgpEV
	 VEsQ2j9G2ufeQQct1IQXbIEieHTNC5NrUtlPCIfMucwGzGcykzcWgp8M2CuoOx1+Cg
	 UEE22wwsoMUkIe2oUcKM4t403XkirTttqFpQtt7A+7BoWBgXr/Gk5ukluO/i+iD8AR
	 Im67Fu3pnBrIEVI2De1o7dS8WvMn19ATiGmxc9kn7XzszpNIVhLaLMxheW5QIwq0F1
	 R1QVnu5M9U+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518FCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399051360.32254.10519538280718693607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cdc99027723e1b9c360236bf50307d5d8abd9791575d9b99cf2fce378f2246
Date: Mon, 24 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763990513
