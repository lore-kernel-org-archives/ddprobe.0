Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218CF3A9D89
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779186034; cv=none; b=kW/iCARVptOZwpONZbBx7H1FwAWBi2kN7oYInjWrWvEktL0VbRzVS3O3b78Lt2c09Y2zr/H29rR8ElQwLmx5ZV2Oythx8Po/PgeAk9SNU8ge3+P9irpe9rZ10LlvXDbABXW2fs3a8ijzfy77icY/YK/C/af/nyeUeafo+RwXBY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779186034; c=relaxed/simple;
	bh=qE+2+eSrN9Tg/C6+BGk0Ep5k84GNw9jeom0FChHLIy0=;
	h=To:Subject:From:Message-Id:Date; b=K75udO6MVfsT2rBn0rei44dmt2A+8DYxZXBRKlV4psoV2RZDIjXK0tnH7QwFR4j2RsfShzFcha2EHxn++O7cZhDgtfGtv1RAcbGoNxVxi/ytDrubH6bxHdGd5gkifLahd/J7+D/ZQCVlsraCMQc21otqAJukvrGNFmT/z71o4jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWVaMCR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWVaMCR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76A7C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779186033;
	bh=qE+2+eSrN9Tg/C6+BGk0Ep5k84GNw9jeom0FChHLIy0=;
	h=To:Subject:From:Date:From;
	b=eWVaMCR9Kgo8O70JVBHZf8YDWdQoADutQcsqrNF0AEx7xSQ5GHKd3dLPnONRBeE4o
	 KIfAeKS8D5hnV4ROrQgjfOupy9bBFBJPgkTlUKOVgTsJVjPYfejJIzLLu4YH7r3NqW
	 Un6A4CDeCnxynMK3PyUMOEhQ8LOHfbMdDVEowTv8xdaIlhFlbyZ3Vdm3i0cUA7d/iC
	 CGUP+Jm80ykfbBboJd+cQNs0lljMg3ysaO48k0wE1O/TsASy/bMcIKj8y4h/tJvNu2
	 A8w5yuAqLH0OJ6JyX/1D8U9JTqikjYTxMkTsuXgwa2qkQYW3LXnTi+HVOiQv32Fpu0
	 GTH+10db52vqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8448CD5BA3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918603373.16010.2910930269784149581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676a627b6f2dc5fc53eb5bba4a39baf9f82642e1eca12baf84dd98cebf2629d2
Date: Tue, 19 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779186033
