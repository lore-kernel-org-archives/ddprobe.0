Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1DA3803CD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769690034; cv=none; b=HzyVGuphnMRmt6B5F9d9Xq/0Uj5tuyH3hafhUfg+P3v2IBWakuphx/S5MdVaPDIJVI7VNK8oED45oYEVrLdKGS89q+W2ly3BV5OwccoQWl2f2tYOLxM46MUmuG6TDXGOJP41HwJQWXr6eRzLtlOWyuMd3oN/QLbc1CIak/h3L0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769690034; c=relaxed/simple;
	bh=EUUoafqaS0xBIQ76PzATqIYxmGuK2dTMcigDJgsd96E=;
	h=To:Subject:From:Message-Id:Date; b=o28jQ2j/Os5sS+INep8zA/ELQDCf6AYaxTr7vPKhRZw6GasIJF3tS4PoRJeVbknrBeOCzqs84OmJBD9/grxzyOEM47L+G+Qaj912GDGq/G9Gvr3ZYKowRfv+8i3N2dYK2L70h2j3CTbhIMIhfU1u77AP26hY9JqiKme+ZvgBCq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9dSoAc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9dSoAc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5065C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769690033;
	bh=EUUoafqaS0xBIQ76PzATqIYxmGuK2dTMcigDJgsd96E=;
	h=To:Subject:From:Date:From;
	b=K9dSoAc2SBo3U6Jk/se+2D9RNq2ozEM6uRV1rCuXp/LHto4a7Gl+YZ3JLXE8unPJl
	 czFn/T2BFd8yy/zDrDsn8eDe6d7gyTB0ycT3r5GXEKcwCkE88iTt1f1JVf9VmY0AhG
	 +X1XvSRRr/n6C2ktaEP140cRRHL7U5p696QqXcZUN/GJ5ivGwER/ciQbN7BaxvuPgw
	 51FhRX7VuNqFXyWjLHkl91jBF7nJzqrJUurYOyamfBfUwWJk3HnNAYuJdeGMnUliOA
	 PiBOBoo3D/0CYi5QEgpTRCtSVWVYEWlZLQAgbqMIiVhyc9OvvCOBU+6rvpI7qDjj1w
	 erUYlm8/0I+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA0D61010
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969003360.18512.13882516393538841115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17dfcebba8112b26795289f57355ced36a822b6beb92ca3e295a0ee9adec9fe
Date: Thu, 29 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769690033
