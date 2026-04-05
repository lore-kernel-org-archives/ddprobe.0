Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA93FFD
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775380534; cv=none; b=LTZLicoosOtckH+HevWqIgetCi2fBXH2xF6cbXTwfA5VsDZVOdUEzQCJH+ICIYgOGlEE5TQSbtGsMLwoOX3DYPY80HTIW3DytHC6TQyrzp+OwyWcjN8cWeMCtDwb8X0v9aD7S7gKwkw7kAAyuOlUMElgr8smYatdqrBZbk+Pnjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775380534; c=relaxed/simple;
	bh=vJALlrVqqOHh261Vpi+yRgof7SRUQhDsf8ta89XujdM=;
	h=To:Subject:From:Message-Id:Date; b=KfUbFLp0AKjPtTTnSquHNrPvMh5bseb/TdQ3S/ahedwGcLFbU4ZvZD6IAsnctZQH2i4E+AnBc1XLkcuL/3KNlPJtHXnQRKJx5pVLNxzmP0Tx21aBKmWCH4prmLKoySxXHVZ0AfYiSeU1kgGjGZ1+udy3dFEBRmToGOtD7A7TTck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7/5Eby9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7/5Eby9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE489C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775380533;
	bh=vJALlrVqqOHh261Vpi+yRgof7SRUQhDsf8ta89XujdM=;
	h=To:Subject:From:Date:From;
	b=S7/5Eby9y/u3DL+Gmve4EJ9OPczJFSybI1ABAF0WLZeCaeOUEb8mE5fLKMzoWV6zn
	 Ek6bAsQwldsFO97PLPu1aMkOKVHoQXMru50pZgxwBTpCRCpUzcvBkpY/JekQlJHq+s
	 qupE1Fzjpq5XFSVnPUSpf9dLBcxxlffks0nx7XEgof/j0MLeLbpDmle/Nfo/YDMZTf
	 p2i9ZmVpuOAbjUjXjGWDOKVU2sK+dbZc6SAIfJ9F/C22HzE88SgzPtsKJZWKfGV4kG
	 3KYzPp7icvSGduq0qP5mBgyx7hvMR2pFPpVsH+o9sqGR3YwgIcJ1Oc+A3iwR+EgHbJ
	 36u4NYeFpVWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E1E64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538053368.21906.13306020891513759871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7553d1adc684a9f64338d470b044ddb76b5e339d98f039346aea6103ad6d943
Date: Sun, 05 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775380533
