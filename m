Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427BF39AD34
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779813754; cv=none; b=bfp23s4xvQUfLCLZvlWBX3R2FZ+pn+smjXDmu5mn5Gqj+T2dxgHIR2kurLAIdYBZEtt0DyrrpYL/RzHrNrrTonnECAc7gL2uTzupnKSxuxe8/Bap+DayN1hSTDENwACQNGlJwB/z6ff0v1vqMivJTWJsz8niSqG9mlZ//5K31EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779813754; c=relaxed/simple;
	bh=QcDm5dFkl71yrUcSThZ8tt4980Y6mE3pO4ZU5MrugIM=;
	h=To:Subject:From:Message-Id:Date; b=mRF693/ZvZb2/lCgWVGqOZmoFkHT5c2uXZgor/EGkguwwxSp4dC/aedHNINsHjB6kt9NGEUwnRebAj7Xb/AjwzgIY/zs/Mzvdh/AfuZlMeh0gHYlCuIB6QD7IUHF+gf2wQmHLtxjyBeW8s7+cNgDSVBS2KkHHXj/w574Jj29Glg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9C0MaRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9C0MaRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8154C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779813753;
	bh=QcDm5dFkl71yrUcSThZ8tt4980Y6mE3pO4ZU5MrugIM=;
	h=To:Subject:From:Date:From;
	b=T9C0MaRm8IF81xJQ8sp2ZjwD23ic9fmRAxk66UV8EMOCNEeaNXGSM/+EhXDT8Q52Y
	 yYclFqVN/hAvt/KGgyMXtZ5lJVgkIQYtLXIiXRQjA4CU0kU5fPymceEV/JzH8skgrW
	 0yUhbVB7weOi+algJieaB+coVSItUOhkhem4Qkvqi0RKh+vBB67W4mUFPVkF+Wg1Lb
	 U2vKY/0jSdHKY+ekNoV82xIr+LPW3qGwgXidqSEeGOg2Kdj/1a5476IZxqO3zDXL1W
	 2DtlXYqEh73LCVQD7UiCUV4+tBCZxx6rPfpX1VU2D6WIFnygajiesQ4LTImXqdWzRC
	 EnZDTjvT8dsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2B6CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981375375.27874.14228444873205051011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064495bf708f7e00461a3bf44442bd46d2073e7e7680598deaffae70dfa76e77
Date: Tue, 26 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779813753
