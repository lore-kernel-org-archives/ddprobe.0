Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFF617B425
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482594; cv=none; b=GS7+c5exD9JenEj5N8DgE1YOfgzjSHvFO0ebTM1pn0tf8Zt+aauYborXKuA5aHy3xaxSOMWO1FvqKeYv74n84URvrQK6R8yP28cjHsa9+/o6d7gbiyArbEseRNBX5X1oF2UKBNDp5PV4Seu4bvjNQOmd8ZsBWMEmrwoSJz3Nwr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482594; c=relaxed/simple;
	bh=u3NbZsVvqsbhISd1n1nOX9FrnZSMX1TUnL16W3v4IzU=;
	h=To:Subject:From:Message-Id:Date; b=Xs/ijCrYoP+5OdQpW7DcZJvFPLWOm76JGxf3aLOIBE7TqcBoSsTvp3NYtO+Tsby89Hlo9z5cvRetO9ebeHhXgdFveJ4N5r9FLTMKa8071ZyL7HpD9f41ZmifbCC3LI1cUwcaYZdN1XjZDb+H3NPKpeIkhPXhvWIHzhRVbgj4ViY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U43EZqQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U43EZqQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6388C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781482593;
	bh=u3NbZsVvqsbhISd1n1nOX9FrnZSMX1TUnL16W3v4IzU=;
	h=To:Subject:From:Date:From;
	b=U43EZqQiyDBLSp0BL0AFAJK7WGp+OUjSLQ4i6hIhC4zUd2oTFouyuz71IU8ItRxy6
	 iMkdxaBIFqX8Gs9XaryssVRXjg0EY2XfjhXSMWzN6O2STdk6iQJZvOHLWxTfy6KE9X
	 ZD090sTm3NN1d6DSRGZBchczPB7xeXLhsDTpBzlxUE1AYfnXBLzV+noO/nw8QSvTmS
	 FOVrGQaoS85iv0QV5zumFxVnJPctrxw7bECLmN5/7xnbQjxpMapEOmaUtzDcI7Wlmr
	 Qp4bI9gvfCcqbPVO1E1akuCiRIe+Rq2LoPaZZXebSkjm1rZHFtqmfgYv+NrbHuLgIW
	 Y67PQaAfRH/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54FACD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148259370.9089.6716573764889086953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3917d2f8a209f10cecf27b19d389406e2d927e0b0e5e7d999feb6f97e0e10a87
Date: Mon, 15 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781482593
