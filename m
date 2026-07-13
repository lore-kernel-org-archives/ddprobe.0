Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1888B3D412C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783956514; cv=none; b=bTeq2l/Jb4jw0vdxqovwT4yc0sgMRARwOm2rTYWHbOKGZaubvz5ViCHJndiILzggX0nSRar4xXt9rAvXHEcBK3UqYQuAu+0lytalPsZSYwIB1UgVi/jHXDhExufnEiFlZO4A+RxGBu/YsANTdNkeFvnA8iyzQAAtKQPEQTjmrEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783956514; c=relaxed/simple;
	bh=cJfT6tOyKbGLL7/T5qfKg6QkVpkthAVbIc5tD0fPLN8=;
	h=To:Subject:From:Message-Id:Date; b=gaMfpw3OMC8sL9EuScb4Yay6IC9uSkZ2Ss73DKNzpZgeM6umHHvk/jUk+CjQ7WFoPVBeZ4MjiK/lgE/0qKc4BqCT5Gc1/qcul9UZmabdr+boxFFS4t+Xh9oQMVfhO7BgOKSvmDA7HYjkSRLw4gjN+af+EZheRn6kco7+hXVI6mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzALOIXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzALOIXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C82C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783956513;
	bh=cJfT6tOyKbGLL7/T5qfKg6QkVpkthAVbIc5tD0fPLN8=;
	h=To:Subject:From:Date:From;
	b=IzALOIXnxu0okXLMz3xS2BVJajnnYSf4cpY9r8t/Y45Ip4lL58V4jbdas7M2lpaVI
	 bpizdHWECqOy2MXjxjgesH2/tca7Ekez80Je0ikMmHvtoiU2H9WcQzr60qfgR2sSsN
	 s2nDaIbggQXgJp9anmf7J160AQuesIZq5rH44jYbk57tkXLce0DzbASoLaPl/uOFOG
	 +4WfwK0xpjAVMiuLYHRjnQ43ojWLEYnIamM60pIa+h9Mi5i4t5VHbXOM93kYJAqwlk
	 R1MBUgBBvztJpx5acRKKRP+mCol4e51rFyrCDXxzFj+ff1TRtweqqGopE2drjGWzOi
	 wO7iUQP7CrhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD9C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395651368.5449.6782854860269425787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdbc4501228c79697a2c2ee60317f95b0a267a10a20de669468a95decc7b369
Date: Mon, 13 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783956513
