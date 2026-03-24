Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8667345CAE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774392894; cv=none; b=ta1XsXgo1tHmrKxdG2v9hvY9vP/rFvT1fxsQf4xHJRpMJmiORPYJUQDiOZE4pmlPGzYE4wUzV/VpbQ8THvVYp8YQNpeAsJtec90TZVGnUE27QJufw9ETTJboqQWUBlLAXdA5XU9/OagxA/aojEm02ZnmTnwyOOVUcOeEw76ndxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774392894; c=relaxed/simple;
	bh=38o56Po2eEQ4aM0n3n7zywyNZUjrUuVCPDPUmglOSUY=;
	h=To:Subject:From:Message-Id:Date; b=uylBb62P9NzyPyy0ri9W9z9aV1WCVkJwAXFwpCh8wpDdMR6/FSZKzfxD7DEQV4vhG8x2rX5/JvEX54yYu0ukX+E2TSAf/fSNnESUCyQPHVxfRF63AACIogR9juEpb3oH8rBvDsc3j3qYEfq3vd5ypfEbvgyf2hTt4Xicun5T1No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv31PkCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv31PkCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8BC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774392893;
	bh=38o56Po2eEQ4aM0n3n7zywyNZUjrUuVCPDPUmglOSUY=;
	h=To:Subject:From:Date:From;
	b=nv31PkCP0gxHAktAjY5mgc+ntF/bJ8DdWxKHH4umCg6JQvzwI5zMGpJae4aLSMPH9
	 +RA+Cqfj9T+YWPkdtNzDdFqAyBH3ecT8gXXuRX4nl48Fo6QLxd6QizOI0Z1KRYvhqu
	 hkgtfY1UYCcbWZgmSZxfspbTR1fXHsKM5bneBqK95AbZ3rM1Il9/q3eEiVG/EUmSIE
	 rYN0AiH3hpzLj6+cGYEYN7OUBgNVNKceT4Sz4dkeKJrVAsrROSS48piiA8to+j2FNy
	 ov9ZWvWrGx198FkDd2cf+eCywyzaj1UuM1oMQCATobaHIUWs4YZVG1nGa4BPOYem7w
	 sRzonkuSFVkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A8DFEC104
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439289358.9488.2373592004706022432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96f9b824b680cbfd8607e9d1882bf60e96bc42c75c7200ad9b993ae97a55343
Date: Tue, 24 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774392893
