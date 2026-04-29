Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A6C2727FD
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777474654; cv=none; b=nwml5oswkbt0b1fsWe+GLC7kYjA8/6n1heLWW8p8IQWzhEj5MDwkgjt8u/KBXYxoyGOyUGb7WhjM/dAM00vup9Igj5bVgeO00IJD1dUMkUjjOcMB12DlXnOUzav8LDAEEbcTdjnDEk2Rhkm1O1Rat7zqaKTBEGyWYoTLKImA2Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777474654; c=relaxed/simple;
	bh=gl80dpqTSzvG/5H6i6rF1iC7HOiApPva4fhYzBBkhfM=;
	h=To:Subject:From:Message-Id:Date; b=Dh03kz68tssf+o+zELSwVwrfHbzF9VzLws2FvZzbcy2LmAKf8pf3dpA8dHTadCED6SdbbKlsqzd/ffm+HK4n9pXLrUiBVN66boH1F/kZcNbrX4nUoZWu+cOhLPYSoIIC91+gkfyTDlVI6/xSgH1ElRs4JalaXU7ll/hRxcJvOyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnlZTLN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnlZTLN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84A3C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777474653;
	bh=gl80dpqTSzvG/5H6i6rF1iC7HOiApPva4fhYzBBkhfM=;
	h=To:Subject:From:Date:From;
	b=jnlZTLN1ryah1Q3iBj2+KzHZ2/O5ztlcNsKaaR9Tu1Sf7JNcdJQyeCD5PxpbXeRRE
	 mdFfES39nitTDTo8Jmk9+IWELa6OAv4mT9ZE5S4kv8cM8DaY84A3/RSPBv10NPny0Y
	 VBsDDJ1KYdI5UYJjvlKRnfUtHd06/vdYvE6TBIJvEhfmoSAXn7NAvQlMvdH5Wodp4t
	 IEXtZ4ZRPxdS2jQF7k0Cmwkk+oJEgGE1MC4iJNXsW4geFV3NELtYGjm6xn6dtqDZQg
	 RcsQJeBuNYQMeBC7RaTJhNCPHmPceHA0XbLwLdWBCl8w3n1h2p9umMQEMYUmMvWw9P
	 c82IEksp0gBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D20FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747465368.12076.15433351577546326288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12696c9776cca2038fde44e1734425e97194d404b270d82dbecc1e2ad682488c
Date: Wed, 29 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777474653
