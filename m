Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32193522F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734192354; cv=none; b=LZrVprBAmutcFYmgZwmKzfZp34AlkRsDEAWTCdfMRY41/hFjgbsowNDD0VNGzV5flpJ/MeGg/bkHwkWFEICmMYI6SskXR538jDjsvDwpaNHSBxI3ZQudeXg+86N8sY4MBuqDixZ/JKQTZOtfMRWGzue0WlqgahUFDDjr3HzlsHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734192354; c=relaxed/simple;
	bh=WA+kRmR0PfYub/QYxLXklxtdPB1x/bFPCeke+8sZgIE=;
	h=To:Subject:From:Message-Id:Date; b=PP/O5fLGlE0T9eVhgPMDQ4+A/IZAUnKM90brL3bylPdzzExB92+thw7lVjnObm5lm1I4p6jpgoBFEyi5MHWQkYaEAuG4YIEJ/vXCHDQOrcpbQEZf4F9uZkptsv8b+88sbjhgXF1EDL1k7cG/uV9lPfTxe7iljl1iK+4CA5JmwkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoITRKGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoITRKGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B290FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734192353;
	bh=WA+kRmR0PfYub/QYxLXklxtdPB1x/bFPCeke+8sZgIE=;
	h=To:Subject:From:Date:From;
	b=eoITRKGabF4j2DzfqbJtO/NvjhChQDSb/xJ5zIoq/JcNLd6dpdYzZyneTvCsCcuoW
	 DSPDQpATkzg6RTyqcgK2GmSpE5FH1fd3DvMl4mkHezXf6sAtlMRZ3VUByyZQ1yQFGD
	 k7aKMiBbuQnz8owDheyYE9aYmJkoIFFS2Tr3q+DALFjEcwUWnJZeDlaKYfPYxRuGXl
	 1swOZhIMIivfW8B+pfy193Z3lUcKS6W8Q0ztmPmwaH/XCQaFMOBgQwla/cgEFoZ6EE
	 k06RBpJxu6q+s09Ykk2aUoQBIYvo6Y1/JpVQEyAUqpvrUj4xq/JMDQieXI5cKp6GGQ
	 zJa4+OjlwyjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E807E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419235363.27736.10238878855681201762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f144765bf5e29673438dd020344eeffe421e08c04ee5940195944cdbf27a39
Date: Sat, 14 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734192353
