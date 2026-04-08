Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BCA18A6A7
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775652934; cv=none; b=kVpcbQLFOAIbkWyoxwj7pPhpAyBrt/af+9Rir4N3lqcmdYVUocC2E17b4lliK8sn3aJ1xQoUfBZK1kZwqnAaun8XX3nriv6Q9Hw6Bzzo0CNNsWIv0zllh/z+wXThcYLh9L5q4tF5uXke4tMTJe9PyON0xLRUq/TmeiRQ0PXiFas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775652934; c=relaxed/simple;
	bh=OxhEbchg9GOCDqBKGxv4HCH/6pzI5HQ5UabMjzvYq9A=;
	h=To:Subject:From:Message-Id:Date; b=YcebNtxjoBc4y8uENJXWqQ5kWKMP1+5u4m0ITul9hnOnjbukRZ9m3b6H23+SF1McgQaaFAnXkS6+ikwXi4qW09EFL+huAUTv/jZ3r3AyN4IK47kbvJ4u77Lr97Sly6Bu4J9ydGUFNoHgcclgj8Bu+F7Bw+lBKHtegG1AbHP+Az8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssfQYcbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssfQYcbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC208C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775652933;
	bh=OxhEbchg9GOCDqBKGxv4HCH/6pzI5HQ5UabMjzvYq9A=;
	h=To:Subject:From:Date:From;
	b=ssfQYcbiJ6Z5eplx5hb0Wr8vk1KhGgafFaxxZvtkiVFf0wGWqXkwduqlsSGe3Ngt2
	 whp17M+RIZfMhaG9druXIOtnIWtcS5GuKY64GWh8DyvXoh8CCMbI9XbuT0QOiDwHL7
	 BzFGFGPILpBYl77zzM1dhn8SQfz0QWEu7dVDOrU6Zuwc83/COc/MZEtnYIPqZER1DK
	 HUC3/J1PV1q90frzkkB8tST/iCL1hnqEUHOCKWqZnM4PWvlNyqcjvX7JFSbOAHPMEw
	 fuMcTO5kHJCQ7ESwPPy6LcuiKuBXE45TwKxtEcOjo9TRASDFFY8mgGQ2HvOCMgkLVd
	 pxgRVlxGE9A8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81B1073CA6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565293369.24417.14944221262020380958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd009cb5a01b99ce19dfe1a1b7d1d6c792acaffafed2df6b25de2dfb76a205e
Date: Wed, 08 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775652933
