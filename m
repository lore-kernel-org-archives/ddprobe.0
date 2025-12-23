Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0877533FE20
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496834; cv=none; b=QmkZX8HUPNLIq8R4zZ186f46y2Y40cd1VnZZt+eM0dYAce1tNqrWqx0H/WeMAun0aAmrsg0ouppqH+OjyqUZrYe+dDid2xwLwFEbmII2Df3ZA3BqMOZ5hilyomxaD04qX7Y0Kmk/j0vMZDjH4rJ+umFIWHGx8ulBXeXl/Sc58dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496834; c=relaxed/simple;
	bh=HssmcezYU0TMzaHzYvU7A/oBqz4hxLrH5tsiIYz9IZ8=;
	h=To:Subject:From:Message-Id:Date; b=CH0JOPsV2HImX20XjUcjQwjOpujxNPWIiVEuVErTfYoWK7erd3/zB/6vSkD5iV18AepBNc8pKtAKd3D6ZJxiKpJTuHEu+ZnPBBgCCLdkLTml/8nJtQRmGhcULAPq4E7FL8n0eeEu3NdHkuQRzY4jO5TJncGncz05xiBaPLbOezQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee8deug0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee8deug0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D97DC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766496833;
	bh=HssmcezYU0TMzaHzYvU7A/oBqz4hxLrH5tsiIYz9IZ8=;
	h=To:Subject:From:Date:From;
	b=Ee8deug0zh/p7pLcNUk/Y+SE/GHMzlmhaciJR/bdbs2LVFrBQtmhJJtLiVmTaX9zn
	 gZ6DQe4LQs1HHMsyikQhKbdnaPzFt3+WI0DaPO49e404STJ+dYtvkRAsWYVt0BpHml
	 xNbbZoO7G0O+GARzzaYS8tP+MHBNbkoQCQY3HoFLJJg39ngLQTjyvKgHPGBfWOovbW
	 gcQgYUw4C30fgVaORuvcIk95jYMBeV3MPhDW4WwB/M+YYMywFNNXoK/nDdgQleo5QG
	 VCL2TCK/pjpSEkRsEW9yn7ieDuMqDzgsoYGjFH2cobEi/L+PK4AJAAzccjEniAO3Mj
	 9xEPfTyo3Rltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78AE6F08C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649683358.24752.12395897265705672518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd00f3c780a9928c26e15a14fb8836c0732e7847eb943dedbfaf736de13b11ed
Date: Tue, 23 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766496833
