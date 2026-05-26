Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E93B7779
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779825154; cv=none; b=JRqrRv2S952DdDTw/uhwJWA0vV5rjnYihBuOK/52u2BiJL9Ohy+Z1ANz+PA52sYoIvHkoEikt/h9bR9ssXTj6BTYP1abYA5bBXzJvs4y0NTkcb6nR7rJ2q+7R9Cv5PqABjXdawQFjbgx0IgwQqxRcoi6Erd9MwtJNjowxTLeWZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779825154; c=relaxed/simple;
	bh=y7KRSjw6pUbM/Ojjgo0eCe0JhDlDtWSyOvIEGqUlNAc=;
	h=To:Subject:From:Message-Id:Date; b=e1dcYLy3UARVKl3QCphzCtYgP1kKbDBwvTM9ni4BEh6o6I9SxGmZSSn1jR8h2Hwc9bqTkPJlSr91K/pRLMNoMLZXtONbaQbE7/+ZkOhdlm9UMJ3B/tcQgrdv6dXoGD11HcDGlQceD1QU/MFai4mnNt+XzbOaUCqfT2ZSM4ejKHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoufuygY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoufuygY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3899C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779825153;
	bh=y7KRSjw6pUbM/Ojjgo0eCe0JhDlDtWSyOvIEGqUlNAc=;
	h=To:Subject:From:Date:From;
	b=DoufuygYTvl+m0432o3ehAcOPorSHxiDRUgvRSHHND614JevGBGSMBfUyDWSrFO9u
	 4E+3DWD6HD8qKBl7/q+XNoiVqMOPr+owNKyZyfAZXusor7iw6R/INm4wGXaLqtgeMI
	 xMje+B8eSEpDc1sXizQNJtT5JDrAMrTx1Y9ZoXTe8DV4yzwQ3j/wGezwCpQZYpWyfv
	 FacCfjU1EbxwQGz4doyMwRn0REDn6zzQEhSKSaFmtxFTL+9i6hWIsJNrZLA7xkpjTt
	 kDXjhAx5k1RZWeyX0dV59xENvfGYkCD3pY9XriwJGvztmDkdDWCUbxGcBdGFN/Ub59
	 b3RmJMnz1zLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB342CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982515369.1511.6961403984044209446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b353192ea759cb85991711509566f63fe946480acad7e2d8a31745fe5d611c10
Date: Tue, 26 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779825153
