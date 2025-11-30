Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED928635D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764486774; cv=none; b=XuKKrimaIntL7mbAVjwpnI+OZm2UqIeiFaViB/5XAC5bGr/9/X/9NXukUSBjfcD9/f2g7RDdH7E5IWkRrGxzOZfISNGYsjfkZ/jkzb+FtVzVNLhyE/sScEeuao7yRSt/VrsjGMFdhhKWWqDOdLJ7i37JapYMY2IIhkwuIAlHVNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764486774; c=relaxed/simple;
	bh=wPwpYS5f4XXdzn3mUJ07lSLiicwON1ptxJxklx27ils=;
	h=To:Subject:From:Message-Id:Date; b=MV7m78L877cF/6+GDZfTof4wFvGUAdmJNMs3jsg7vq1kjjuSFS+0OKnV6jLN/7Z5gRfBZ6fH0eI6c9Pz+nD8tuqjfCdoV2c+Yf7cR9JemluwLV9ZaSLCVJ9HLK0BRXRsYPgKF52G5oUXyMHUoPUMclL3wh8Z9uOEF1lQKBWfvyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ehp86/ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ehp86/ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9335C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764486773;
	bh=wPwpYS5f4XXdzn3mUJ07lSLiicwON1ptxJxklx27ils=;
	h=To:Subject:From:Date:From;
	b=Ehp86/owbxMpFv48JViK8weWQ7u+lsd5JH3t+GwP/YAOVMVdm5vmBD3Uv03RbTJVS
	 sSrfZLRgPKIL4g2EbEMYmy1ZeNmK7Bw8N4+xsdhktU4PTDJX3MrxgDCNaXb3thHlDW
	 oQ77l/cejGEjCR2W44FA1+M5kZbEbHDgSqvF9suNP4R8hTlM1XZPTLs7rxh3GsX771
	 qGXaVhPMZXA8L+bCrpIpQyHbaLERK8JsWBQzwgyXyqmzamww3/HHrry3WlS/VNgM5D
	 q0StCnNAGLMGRQGXCeq7hV2XqppSkIXR4QDSxi6oFzZpfESKNUUWbDgV+3tnRQXXuu
	 7asMrsvqQzKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9412BCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448677358.10409.7707684477946190684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf926ee04fa7673b108b989fec12edc77d862212b70880986f9105a0ab524d8
Date: Sun, 30 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764486773
