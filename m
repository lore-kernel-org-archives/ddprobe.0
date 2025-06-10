Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EB27FB35
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749544794; cv=none; b=rzUejdv+PXKx4zkvcLq1xXuC2HeCzw32Rn50nSKEupXX4ehT6+zdwDQ7k8fMT6xyutbMMz2dZLduibToh5jki/HZP8EQx4p8VR0Pt7xJhfgoGmU3aS484qn+HYhIGOUwBTyOfx26dXlV/RZBMavVF53CEdObmN+YoyGBOznGrJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749544794; c=relaxed/simple;
	bh=A4lRjU3gker0ZWwGhzYOFCHkfj9jIwmA7pXWuo9EBoo=;
	h=To:Subject:From:Message-Id:Date; b=Mxb6jxNlTN5gwzMMefcr8P9Vu3Hulorq2DPuQUNK+0SFBKSooottuQYw+CBzfkoN5h5Np7KvdG6RGglwlzA84l9FbO8UeUvmyYNCOfgTKV4Ia6dyxhMGQQOCkwnCkpJ9mBFXG+Fb3TiA++8kVZmKYg/xJeejfmCGLmy2FJaWVKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnYljtT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnYljtT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5701C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749544793;
	bh=A4lRjU3gker0ZWwGhzYOFCHkfj9jIwmA7pXWuo9EBoo=;
	h=To:Subject:From:Date:From;
	b=nnYljtT8CgOoQXQtUn8ksH0M9k6Anf6IlBL6I1wsbqN4P6kr22jBwzRw6kb/CP91X
	 juBQ3hLMeah6BXdFs7Ue/kPXq9jA5ObpAcUYlgSNtC8xCvcPsog4d6RDo8ESwPVFo/
	 +UPxCVJbEoSivOQkqL/UJvJFOC7me8d5HnOK1joniynviSelxwgez/xKGyzYl/J3km
	 u6pFPrud3x2FdmPyCmML3poFLlm5nlEMDw/k7biDb/V52hRQskQ87xHZjl8zwaj9+S
	 8tx3wDcfSDcVBPSMLxXaSCohsqfONfUzqO2C2ZCUo6zHh/XvyL/WvxOu8sMiNDJWPG
	 f2gxrE5j8IyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954479358.14234.9221215142776012870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583ec9539ebf67d2d9d03917a7c9b94dc642848d564b6d10e8baa577c0b2b553
Date: Tue, 10 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749544793
