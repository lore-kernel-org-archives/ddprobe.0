Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331183BED18
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775131534; cv=none; b=hlBLqjlfpSpnopg74AUYQBuc6p81ejfYXUhR4p2OSazr8uNdS6HQoyPDNAp5CAMmMD7s37tLfnqjbY5164Kb8DCm5XL/OOu/kteG3HuznNLzNvryjPfcb2IPSSYU8BEENMYx+4Ln2us5M4u/okBA9ro4lf0fxSEmEZxPGb3cniQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775131534; c=relaxed/simple;
	bh=KF9Z1+sQyq5ICydnz7Hnce3A+5f+U53JiG4o6lNdBC8=;
	h=To:Subject:From:Message-Id:Date; b=AWl5HzjNZ31Q1Q4RnTOnKUVJ6UqryQ23yDn7e3qVwR2L1kyaSNEsDkBGuW4+JblSQxrI1KsRsxlfIMzoR0xDyMqmNVlGnEwtE3J0t+W8HdqPePYE8ULxtsu5rgM23y/PEFiWfQmqE93gvLZ2O9zFLlPudc6LYwRalMfty8MsJaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaVANyqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaVANyqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4E5C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775131533;
	bh=KF9Z1+sQyq5ICydnz7Hnce3A+5f+U53JiG4o6lNdBC8=;
	h=To:Subject:From:Date:From;
	b=AaVANyqYzfz7z6yAEJDq6wNDgJBnAWJpZFi3pMJPWLOMY0RsFfCWlmu1wrAjSG+b8
	 zb0dF+k+Jog1siwS52b4vtcr9EPX0IApilra/qmgIZ0+oVWpXGI6/pZaGDKnrnq7BI
	 a5uYQHxwd8ULVF9Yl4YZJDFiakiPd5m33b7gYPtmvlIu8HChkoqOxa8WIRA8Kggn86
	 zk5X0RH9vtxVWX0/JCD+CvMRh2Zxdcu2AzhGs/TEH0+5BDqwRYlY/99yYLnOsmWN7X
	 ZI/nYlr5SKxOW4b4kD5svUvNXxky9tVVUzkZKNJQOJSYBBCweztNPRJoi2/uBbzu5o
	 LlWwAtLoJXq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB34AD3941C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513153369.16709.7025681529399590518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ab32c04683b4306edfa4359ab7eb419fd6f6841c53b09d6738a2345b661132
Date: Thu, 02 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775131533
