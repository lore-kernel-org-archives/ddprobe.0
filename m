Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E657DA2D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705979897; cv=none; b=YtzpSSBnPQOPIsGVG96+qg5enRrqVC9B5JQkGMOvVlwt6Byf1w9BolL/3COPOimHHY6FeQtvKhUf+v8x9x4uBNHxjONJi167dEpXdTCqr3XEVn1NA/P5Z34E9u9sNYgwzjlxN7ovJdElDOghroWaLme40y0HgaWE5QFQLg3ygqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705979897; c=relaxed/simple;
	bh=DC2UNQJcz7kP64DFu3jc02VoSqPS3tHRU13JsNIkEZo=;
	h=To:Subject:From:Message-Id:Date; b=H5A8f4pE8eQ0jDwzXXMNuFaYZExtlML+FnZNZB9V8KR8Xm9ABzwGFmj54WcnUgBKkUG2UQm3osvcesV6jl0lT/RkLlr1HZf+JK2MiV51SqhgyFH5ADLszfDoRGk7OGLDi6bIOmzY2yjUQYKQARL73sL8kolxPdNUGgHkR8dRwzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo3BsGbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo3BsGbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FB1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705979896;
	bh=DC2UNQJcz7kP64DFu3jc02VoSqPS3tHRU13JsNIkEZo=;
	h=To:Subject:From:Date:From;
	b=Oo3BsGbVdjSyMFIsSuons6A30s20SdMbSgSS0occtswh9piHshnndvymNSWS1daMt
	 GHREA3lWiMXbp462Tn/UOsWnv8XOwyc8ECXsMH584Fb6o92PppWSeaucrjUYYm5U7d
	 uzrb49as3SHRkwsVaz7oydMFTugeMbO+mGEpV6omMTlF/pOqShOjknHbCPi8LXDWCJ
	 RdnKN6rcr235f7+4CU3kM0xcNY8okkRiWxfS0syjmRTvi0Kc0zIg6qlKjA23q0uVHv
	 I+YaMjFmk6xAcBUFYeZ70mi3p3jYcRdW3QVvZEv79fdPeTDYjgxw+N4Cgg1S1ZKGX+
	 Vvz9Dqp5J0Tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C52BC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170597989637.17531.11673065752560279771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee0eab155252e15148c18e0427d1837de3a3fbeeb764763055deee321eb32af
Date: Tue, 23 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705979896
