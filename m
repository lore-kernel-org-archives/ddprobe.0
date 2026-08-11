Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617693ACEF2
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786477234; cv=none; b=cHoi5oD2VnE9rESD6K5g/2RnoqzgspzlXc6qg2fU33FJRUDmAizTjEArfvAPdFD80XIxVfuVmGpiH3mFvkrzocnsEjYblW7CAZOnPTpaT/I/rQUjTqUpFaYriGpMS40F1Lp291TOcdcoO9MqmKqt76t6Vf8Iz0FbS6RpBBDGlYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786477234; c=relaxed/simple;
	bh=5Z6k8fYFCu0x5ynao4+ifj+qrBQUykFrbz6VV2A+sWE=;
	h=To:Subject:From:Message-Id:Date; b=sQ1YZxrlLtp1dUDpnN23P8BZvU5La4N78kdwMmld3+LAi+RnCeRqvgRh2+lEnkC6ezTQ+d03Ij5bdZXsGCyxflf8T0U2Uil/KyWfsI4zfIKrsvoVRMtEXjbnf7ZAxyWdEie5mfOVZfe///CcZLDyP/zGRC3wrdyQIkZCDZ5K6Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X31V1BLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X31V1BLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC07BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786477233;
	bh=5Z6k8fYFCu0x5ynao4+ifj+qrBQUykFrbz6VV2A+sWE=;
	h=To:Subject:From:Date:From;
	b=X31V1BLVOtIdb2y/wgLjpSlm9TGHjMZEW2zMWBxJuaSJNMDCF0QnVL7JV5WVzeGoW
	 3Mt/cSi0tKd5Rlp8A9dVAoD81qqTcXaDjhnudiJNhz1GXYX+jAMcWY85H7lZibCi6x
	 eWi9PbdYae/mVkrwfymlzuHWehljG+KFbNpyXlpVNa8GxAyijVLKn8/9NTYH2RvptX
	 5PlWOFR3XgV3sThzgbu1+UngclQOl+AahM/ChmW+2ouKYZ37EfVYFuvFCsiuzL/8HJ
	 BURLLCCEXiUjy8lRgcbR1w6XfLOhaaYSS65h4UtU9pT3lMShDD5dtWOSdDOA+jExCu
	 OmVol8ZM1sGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCBC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647723368.3800.11527066878914041579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360560be41882927671755cb675202a4f8fc0c83a83198cb49dd37a2840b57ca
Date: Tue, 11 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786477233
