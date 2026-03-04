Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFD03AE197
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772635494; cv=none; b=kpeqsa1Jbo//beVBCCwDuFKQ18cEtCXwvqnBdqj+AJhtVAJ1YjqtZ1xNdgyyD9f15cHds+VePj0v30VOEC9y8MYUyWPHFy7nLQ2tSNFpphJ7JDyZiUtMi9JnUEJUKzQam4rzvTvdyU3E5nU4YLwgCuIeUAF6Qtvmkm/+nWzckd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772635494; c=relaxed/simple;
	bh=qLWkDLM4lOFBe90fV5v6goqMmAWhjjcfRLTrHTDGXNw=;
	h=To:Subject:From:Message-Id:Date; b=jOXU70zCow5d3dHh6c8sT8QStesBTPCP73P1sbPPLO/bPeFlyhOJhxZ9GVi8GCFZ5Vs7B9FOKxpA/LD1ei/ZUeDrLCJAMfKJcwLV27t1k91epeUWMn+WZzXJE2LoeE+0nIsctm3HvH2Bec66IguTlXlpRQNDsVVD/N4svlqgYe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlLZt7+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlLZt7+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E3FBC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772635494;
	bh=qLWkDLM4lOFBe90fV5v6goqMmAWhjjcfRLTrHTDGXNw=;
	h=To:Subject:From:Date:From;
	b=tlLZt7+ifK0vDU0VNClKTuA5JDTwIkkDjzScdyMcnPkzExp4wwrdMfz2g/5UmRXcS
	 J6TyPPEfW37NXIJSp+0J6SDJ+lVNHwH5c2l1KsmXlr5ZHRj4NmzLUtFgumjDhY8wA7
	 HjerJTolCWEbKArr0cAJTt1x/TuZEzgOcM6Q7V7gIUEMzIaTHZESyOebT3WB+8qC/Q
	 o+1k8jH2L/KMoIi0fZvgtJEXCy5yz6K/Zk5jp6aQ+XAwcS5WaMQ3yy2a8BazkZK9pX
	 Jdoaro4nVDi6FO/uaxAx1iLq64FLiI5k05ElFk3932r+bmgHXOMu7mCePX2m+6vmvF
	 hV9KaJbrOqdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D973FEF8FF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263549385.12785.12430504923551424746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33b3a25f4f4bbed330fe1366f16db3ca8de82689fa7f23586dd3005ead740b1
Date: Wed, 04 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772635493
