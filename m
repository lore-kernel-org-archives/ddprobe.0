Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52281248F4B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786288234; cv=none; b=R87iuArOhmkZy33M6qxzBgHuGGN7Hon/D4wPQAYlxyOHRUiTQldAM4+2EwnsIs1kJUnNBRa80oc8F86k8vdqWv4q6YgP/mWGXEWpO87XRu3JOLLBh9cKPsDDNzAQN3EeK6JfiYq41ucY5XtK/e57akLWkIL3uCQBn3Ag5KDLT5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786288234; c=relaxed/simple;
	bh=2Zy5pqzQkg+O2VE9mN0rrAMhSOzxB/hAkUg3VQSH7Jk=;
	h=To:Subject:From:Message-Id:Date; b=n1o5UtL/dhgEA2ShEFJozfeJFiA8LlnreL1oc/VoZ8Jc63yFigPPFGrG4t2/DE1JfyeSYmgtJlvF2X6m+oatGbd0TlYS3fOa53jJrNeK7LWUDpM9UDY5AQ8JxSKaRoIJyuWLN25hoMGNtDfUxtglbDS5Ln8AARl252zsgtamz8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+JMXxbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+JMXxbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3318C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786288233;
	bh=2Zy5pqzQkg+O2VE9mN0rrAMhSOzxB/hAkUg3VQSH7Jk=;
	h=To:Subject:From:Date:From;
	b=V+JMXxbQjEdirYkdgNT+UbgwZ0I7LAgw3md/ffBTNaG0msYSbdmWj7pUsuzVy0c1s
	 xx6i7/MNE7JhVzm+t0C8fGeBokGjINCdqZd3rhKn3u7qPXfmTznC2xnze55uLljc4c
	 wfP005wqgWuAA09u2cWVb2cAnSs8YBg9hBQ0EhxQgngwofGrdgkGk7KEov9X/IVkJd
	 XdwTHjksUJoXoKl7UOwdvRXOaPuxZReMIzkXbrNr7MOmowjaufvJQOzlOKaNEQwJkG
	 oHagiliC7w9YgHmkCIHuKglKVAL7nONt/5rEfWJfG3NDYMA6yVNu2IAPXRqjZD8VEg
	 e7pAVxD59hcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0923C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628823368.21005.2991517758105912863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea297d3c04ff152f8f6752f4a876ef15ac74b291ef322da56fb66145e334c79
Date: Sun, 09 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786288233
