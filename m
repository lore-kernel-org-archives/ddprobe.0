Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110C82135B9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895954; cv=none; b=HZ/VHa80V6Vm8CDoL4QnnKd16UzX7btV/NPK2Oj6S6CSSc5DBZWYo3OPA/k57yPu+Nlqi1glWeLTNat/dy/IHpd0OvTGGLZeqk6uMcB2DI5Vp3w3dmTeQyhSmyPzQIcxQ8BAIsF3NI1KD6nLme4vQXjTvlvu1+xj8nXEIAnB3DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895954; c=relaxed/simple;
	bh=0sKoqYfb/+54UPFOSKDPinWD4QlhDpRf0o5un4EilUw=;
	h=To:Subject:From:Message-Id:Date; b=Hzif24WaILF6yQy6v/plrVjQZH2SS+lVsjRJ8f5JZikXvQQoKqnaqAM5Miama4FiPHCLJ3uy9PXKxodmCzzNkDjyvCyWlnbgql4uUmdzDsFezI+O0DL5aO1/hlOWe/9h7he5ZI9bF3h3+N/XhLVxuZgYmTwBPNfIuZISH8EGFfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfJOHxWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfJOHxWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A594EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736895953;
	bh=0sKoqYfb/+54UPFOSKDPinWD4QlhDpRf0o5un4EilUw=;
	h=To:Subject:From:Date:From;
	b=MfJOHxWpknkEdl7ybw0K5/x6wJGlomC0ELtS5AlyClV7hVzoFE07t/yQO1VmxMFUm
	 RMdjiQRrz1E/NNUYsbFu3TRY28O+CTirOrSFXGIvspXBRjTAaRJKVBg6OiKSNwbPQ5
	 8zz8AnWcAxsjXf12dGm/80rBpV/+i+9J7sy6pvezk5zfj9b/iNHfrmX0FkAef9wdFB
	 Ky/XtePHPA0pJmFNjMhr5cs3mznaSMRwRqtrNiJeJ2PM6qQUlzFx5tcOhay0QQ4iCY
	 7PZCJccfGavWtku8k1bl+8pDQ49TonCStqMpCaIBafZvQnr0202i72ZuoLx8coSUYC
	 BZ2ZwgSlPXDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FFE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689595359.16760.3581426418077036760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd68bd2760741e658fd95a6518126173e003631e8592825024aead62512d5cf
Date: Tue, 14 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736895953
