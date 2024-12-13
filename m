Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BFF18F2FB
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734121554; cv=none; b=PinG/TvaC6kxyeQeDVqkAYMHo9435EYO8bJ1HL9VEfaP50XFycTKNsoYslkc6GwrIjqIQH6ye00PlJ3kA1YNzJ9TsIU9WcV0ZRWogNG0n06jQwAXsBSGQNu8k/bOl3syDIGmjuV7PXPfWYmIxB+YodzS9Itxy55RJIofTQbGVbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734121554; c=relaxed/simple;
	bh=LhkJOCl0pYfXXVJDH/k7UVrnbjNuXnt9fbxsgcbw/K0=;
	h=To:Subject:From:Message-Id:Date; b=LpzZkfjpIv80TYz8FTk842a7ISO1eGz4t4lMmJSEdc3YeL8Gd02+UR2G1R/6zviiHe3m9qi42vOKOm3gPDYh3bbVUb6K6Vs9c87EdmPVN8QL5MJMjfYqR5Lk/aaUcbMyZsPJ/fCmH00eT2hcRyqidE1yDjH6424Gqqnp5ZbqCP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaB3clGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaB3clGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE066C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734121553;
	bh=LhkJOCl0pYfXXVJDH/k7UVrnbjNuXnt9fbxsgcbw/K0=;
	h=To:Subject:From:Date:From;
	b=gaB3clGzx2oL9f7MyFJW9Kghhhw4qpg1T4JCDZvn7bRAxZSqXXdgIWk9PmUIY4Zf7
	 GNdQlL494RvHGe3KTu+liECnZwjpDznqSy+5AccJx6MxUjHYA7JZuhoMuSmYc+pUbl
	 BsHHc5nPEIR+ecN+L00GCrNKGwp4cWX/9NnlaVcFDp5BWPo5JRwYXTnyg0rv7T6CJI
	 Ap3p54z6Mvu2z2kB06hskc0hzfTUslgwpeLlJOjkMgS2S8l4dCcsmjDRpcx0JupqWf
	 WUAQaxHfGiYZYGGj4CLxpA1qiJKBD1WV/GMZmHBFN4311tBhfshHFJIUpnZ4Y4Qn/R
	 dL8zsnycWlncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF5E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412155360.5396.6162840646291279739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbc03ba4cc775f587cea2092dfded922f5a6c9ef855b66cc24209b73113edc5
Date: Fri, 13 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734121553
