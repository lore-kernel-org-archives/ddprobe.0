Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AC721A447
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779605554; cv=none; b=MfodlYnJOi3uSMtxos06YBzhvKdsWuZgzvL+JfPwKjd7Dr1g7G0Fhp/MhCesc5FpRqkcMXsfIgbQWxe20vj3B2nkm1cBWkqmNK9ni3BxGJhgc2TK7mIwYCaU+XWYTdcBYyr3f7fv8GwRqEct3VSERa32f5s3FbCVA1uYX9gjvPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779605554; c=relaxed/simple;
	bh=tN7XM5MahSTwDrE/z5MKlSHDwD0cMz6pmfI4uDUAVTI=;
	h=To:Subject:From:Message-Id:Date; b=pyYo+vOM7xQ75RPKnprnI6jm3A3fa2K8gYivBXIguYcd6w2Lv/LaH4eKKpwTBrRubR3uTA+fZ0Qe2D9702uWroBXwf/YURwRECZ9PPlBvym00UuE0utOTJ7lCR6/yRJkzwFoCQ+sUzMnKosI/kvaxc901DvzUEVuu2VHN3HubhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/DZ+mwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/DZ+mwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779605553;
	bh=tN7XM5MahSTwDrE/z5MKlSHDwD0cMz6pmfI4uDUAVTI=;
	h=To:Subject:From:Date:From;
	b=U/DZ+mwvPmzcS/4INr6JiCPNmSnKEtPE57X7faeDvveeTbj6fF2F9VVdg+1PDpaqz
	 xyG0ATfWucI/HH9ESlGwbEB1GdcN8RTmWW0bNxqCIs6tGx4IAJKKZLFp4aLDFYsYwr
	 f1OqeNRvS0J5lHjZnye08rgQRmJf5URhMSRUWSpXXJ+92hu2K8ZxY23idY24LyHrJW
	 0bUa9+hlo9q7xzqMNjUa0iRA/khWT9Gu36PJXZN1HV/H2+EYCe4yQ05bKPBHbC0C9E
	 G28csdDTJLoNF6+5UfDfgmofmJ2sBwHsJd2EWlL3ow/HXy9yqfknWCMX4lJW3POOxN
	 5dcje/XOhpF2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2946CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960555369.22227.12283700963290692477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6f3349f18a40c2f1dc95fc2bfeecd8924f40c8f5eaf79fcf25a14928ecf777
Date: Sun, 24 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779605553
