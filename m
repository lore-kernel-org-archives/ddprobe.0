Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209383AA19D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772815494; cv=none; b=fKIcwXwBmiD0iSFiNtlrncWvKxAMAeZPhfmfdi+7QKj+t9c0+SBILEvIAyqyma9OV8xDIl1eH5ApdKmAE0rIoI3ynSy+vlOAIu4T7lYWPoG1HdzHWnAaRzJNPGtb8NqRnVESOhaJXqWp9LBcQpzFw6lYLcKdRI13Bgx4v8XDjbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772815494; c=relaxed/simple;
	bh=/6+vBjjNNjphieZ+uQ9hBmDlkm6Z1/aH/23GyqG3Zbc=;
	h=To:Subject:From:Message-Id:Date; b=L4lFLmnZ/MsP7VWS79dsIALkErZ/q92YoLgH+3Z51mha45h3IuK+V1idOxXpHyUyVPG5L0/bAIDhR3a4kv0f0gG+R+E3u6DOxxerRNwKIA/A86peiMjTwYALQx3D/XRtbOxJauGXp04RyluS5aqivEDSjjr59hv5HbUFmBSUOJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG/gi14M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG/gi14M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772815493;
	bh=/6+vBjjNNjphieZ+uQ9hBmDlkm6Z1/aH/23GyqG3Zbc=;
	h=To:Subject:From:Date:From;
	b=vG/gi14MGKdynBxsFfZdNDAxcXTxX3gQEqvptOryWF+UXquGheaOzjWWlufGQ5llm
	 ODAD9Tf5ghNvy2ixjQ3rcX/fVi5mCv32fEirVDGeXDhIILO1qlo7wAbXIK5gHONbZ3
	 k6jhTtINSpBfm24HsloK7+tsB3wgKvUOrtbkHniZgY4wmZcU9Bp0gG13w9ihOCH6xc
	 CaXyzxVXXGeIoQnXo9K5dd04zYdmMBZ66K6BWs1Ob/LyqyKLR5u5Wt/CS7Z03pC6sA
	 oq5D5GG7/8GOT0QxGjJv2gX7frZB81eCmBMMHuiAF8oPOkH9VJdgLRsvksbuyAbNqj
	 W53JjZJFau8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFCFCB621
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281549359.17812.1653637062182135488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f26ccebbb06bd8680513d9c39827ceeefcd94e17235ce17dc0f39c678d279f
Date: Fri, 06 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772815493
