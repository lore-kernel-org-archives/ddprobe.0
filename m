Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685CAA93D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728876354; cv=none; b=ghU/BIFkUZcIajWVf6tNxdj1+b3rY4Mmz4/EPddaYKGiVk9cZ6eBuIVMq8/682VaUFplMxrcJUk8Io6iTcuseu2d4JA61XLri/GgmnTRIIxIMEglWlDdlm/v9u2Is+h1JwuGFj8WlNqRPIvjofsAdbeVTNBKlTlx9FnrhEFwNN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728876354; c=relaxed/simple;
	bh=H3T7hfSuXxkX/nxa/k7n64/gXeNfrn9+Wm4kaS5Jnqs=;
	h=To:Subject:From:Message-Id:Date; b=Ffg3JK6Mb3SDfE0l1tYA8orKE5f2U50qOfO5NlujqbzYVxt7TXkyzByMfOBhE7WY5nmJdCGYOyTt2pewFj2NSKmVE+CO8/XteB0j6varMhkUu5oqZfD7nFAM5e7hnGsZ/nG1Rs2KBRN6hYnjDjvYajWCblrZoH0GlGcxAT2E2KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyXZWJ+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyXZWJ+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4906C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728876353;
	bh=H3T7hfSuXxkX/nxa/k7n64/gXeNfrn9+Wm4kaS5Jnqs=;
	h=To:Subject:From:Date:From;
	b=gyXZWJ+wSHxyLwZg5N4S3iiQDsvC9aY/6Lpcx2NX5YAyrIOHeTDKP3Wf6OCrbuaPP
	 eNsvgVtkf+QOfVNoIV/7wtUt9WIAwNNBdsuti8DT40VbFbG6+CzSRGLubQ5SpTkvyo
	 abq/BZqkvXeXJQlsKlLEaEabO0WH7ymMaZZ6D1+nSXdgJASKiLPoRwybRUm56goX9G
	 dlLPHdILY0VHMVIsxH0Clyj6RgupLtVLsd5u7mNtGWTyq9p7+H8UHt9KNVXsM6sgh/
	 UcGMPcxrHGkrC/Fu5pd5bGLEwqbYYzVZSlq5XDDu7l2T++h9/HqA/fTstlV4UnKS7B
	 uI20CHGbDtExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD02CF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887635363.5123.16471195306181299292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf9ef6ded64ba44e3cb08db6837ac59031abdf1bf012b2855e8cbbe4cb662d6
Date: Mon, 14 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728876353
