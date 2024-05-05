Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB98BF3
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714926743; cv=none; b=XN7nE5YJCQjyFF+W7+njFmFNzWdGGmJARribgM7+xQRqEbg4pYO+fvi8q7wLsH7dRMPvdN5HuS6gZYZbtRQ12Fqf9/rBFF/Z//u4kqxihx+fS2WPFAUPvqHCnlvZr+64wlpK/NAMC2J5gEsJqw29xugPyHPCEt7OpL6x5KqAdI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714926743; c=relaxed/simple;
	bh=yZNi0HyxaGUX2INiDdyGG5VA9VvkW8sqzyZT/kXXYLk=;
	h=To:Subject:From:Message-Id:Date; b=OfM94kk99+PQdXfGdTox1/q7Mh6I8Lf9aZYyaPto8JHqOKotF4krXUOrNYthcb6ss7PNlyL/gNzkc4JatAltYDBfddI3tdYIFh1siR0u/kObnAym2db9ZmNAd7IydgX74OK/Zp/HOUxpQol4qrH+dK3Z5PI7cF3IQxF/TlDYTo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfPMMS+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfPMMS+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E5AC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714926742;
	bh=yZNi0HyxaGUX2INiDdyGG5VA9VvkW8sqzyZT/kXXYLk=;
	h=To:Subject:From:Date:From;
	b=LfPMMS+3BqU9X85yNEaBoGkt9th4LkPM9fMWV8KCRn++Oq1sGwZnX/MjIA4J300Fp
	 C/qDnle+dQjyt6zy6wIb+67t08mhNUFMlM/2l8lNtwfrhA7MnkxsnIdg+GUs6bCJiq
	 tR/Vh7zgwyWqQr/9zorwS9UouREHMM8syIRJSAvL4mYgv4F5uqZrQ27BbFhQyItaeZ
	 DmJWMVz1XAeuTHrjV0fZp1LMpWVLPAHqZmgfDFcA5eMu8aoXm35ZoQ1gB5BZEfiZzj
	 DMi76UGi2BHVDj99vKiwJTRa+w38naqREihklo/piBknL8+MwX3eBbn3xI4aTBveUB
	 GjLc8cG7HScmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFB7C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492674275.5269.644309567597679890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15be15c60a2434eceef683b5249a91a0c4041704abb4453f5f5deef4d83ee9a9
Date: Sun, 05 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714926742
