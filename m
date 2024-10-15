Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B07191
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728950754; cv=none; b=DaSgsLfAbLttYrqTZ/IxqS2ftVkTDFjTIeVASPeYCyFpf9U9f18D4zFc9ioV6Cjz4jPH0iiYLx1zCVUdX7HooXhHJLa7me/Qkxz3yWbAIOaXYddanhgIRMwiM7E28dolJwyAWs+K3xXtjllGc5cqz1iNS6JLwVEq/mEI5k++RKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728950754; c=relaxed/simple;
	bh=dFXDohThtBiD+6gg2tZFoJBV7BJ8EVZqH5yyqnjkPME=;
	h=To:Subject:From:Message-Id:Date; b=tWtAe6hZAdbOWtCzn9CRWqtDgBmB/7R328ymTxW1JKGpaoiSDaH4oZvSEnHg3lJ7VCNytzOcb4oakKGFeUd6FbBG/NQGxTAsvIiTHYf4ZfTF2Gaflxffm4waTRdJnd76hav0N2NLT/cChxk6cEVnpGGLw+MQl3pyk2i4RvQXxEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3CU5sg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3CU5sg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA36C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728950753;
	bh=dFXDohThtBiD+6gg2tZFoJBV7BJ8EVZqH5yyqnjkPME=;
	h=To:Subject:From:Date:From;
	b=B3CU5sg6C373MWl2N7uN0TUzkWHZMXOQmKbzHaywFOEl6AQT9GxRoKle8qPJHuTVw
	 kOajP4yFrX/AjbEs68ta5sO7mVwDEl8o0qLgx1WkyFbs0mJ4avrphNX0V77z9SzYc+
	 PXG8H+6Omjz0UhrSg18dAbhS58b3vMzcx8zzoAtXWyQSAajT2kCDYu4hXi23aWt7Dm
	 53BjEzoJlQnxq6sadGxGYr5V/21pjQJhuusu/PZx6DsgvY/RcWNencUZ+izzgS1Aek
	 4x0JVeYqctKYd3npYYBOUcf3193/QH9X5BmDjINIXk/qLhSgDR/loSkD8ENFNbPbAz
	 efVcKfikGmcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B4DD18159
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895075366.9989.4450915840762953174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee369e7935700fa9ef35eae6574dc6cbe10fc377fd4da2cea264fca9a850fcc
Date: Tue, 15 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728950753
