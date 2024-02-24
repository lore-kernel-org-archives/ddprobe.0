Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81014A87
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708750697; cv=none; b=rXseoGbPqp8D2f+PQnOfR6cnm3iDqtgqZxen+dlSvnLAb/Np6wS90usbBUYbWx41MhRDiqro8Ey/AzE9GgIWbCZ/oD9AX5SKCHrEEk99b9e0jwHvbM3kHcXeQz5J0e+K1Jz/xqyDe47IV+v16/bvN4o5Jb++eF7PjqVC+6JMOsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708750697; c=relaxed/simple;
	bh=cBkJIXoLy2DWfOX0FOF+rteixkZ9ZnQfsNYAEKBN3do=;
	h=To:Subject:From:Message-Id:Date; b=e6OVGOgwR/Mg+xjZUkYh21B9wOAeXbJ8fSRh1YwXChcXrStsVr9vTtYaLA203D7ynatEkx7ml3K8AH/CCj77mvJDrcxnjvh85Y7kOQ0H15TmgIxAUUNLX9YicEymvncKWZnvYhh8DffBrk6Ylrp4MRsjIE597o0y+h9GZOUMrhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2786vtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2786vtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848EEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708750696;
	bh=cBkJIXoLy2DWfOX0FOF+rteixkZ9ZnQfsNYAEKBN3do=;
	h=To:Subject:From:Date:From;
	b=S2786vtOprSA9HGjAH6/MD8nP4SMB1uu6S5XXXsyaOkw+wMHR6/tKqJJAxHMQR7Lr
	 VqafLzU4mwRCpODu7LVsw8dfWY2zOEPwk3P7CDLS3aX65XwQ/+JocIRYy+Rbe7LRT6
	 AXv99FogOlZm2hwLM46a/Cd0yoGe3dAm1plbubhun0zB4JLElAZgkJjjzhnF6MY1hB
	 XD/VofVA5sqSX0vtjBHxq3w2XLsEP6DkdSW4/+xgYW7Bkt8rCON6Eo8CZz1vTNhPhK
	 VSSYQcHAVDl/zASLH7PtfmxNH7Oxi0FN+tUeRadqO7Ay7kHDajfW3DgTrqYAuFb1rk
	 1IoBhvfa37BcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69587C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170875069641.6733.13083970694758529148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449c6fa278633ed32973c8b4bac64e2682f180d36ea82acfae32c2ad2f126d30
Date: Sat, 24 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708750696
