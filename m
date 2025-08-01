Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322301CD0C
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754056794; cv=none; b=sHJ/sUUNIFfm9d6Sqln1DynScAuWLNSpNXjMO9WzLfRucgllcWz0kn3cp86o+yFv2OycT+sh3hinremVRKeDbTtgOs0OdEZBK2JuOIgVsagNQl6SJ+YMtrTxx9oSoWp7RaY2hdKz/CqAw3hA4F3TE6GPiZ3bzoKG9Af31xn2YqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754056794; c=relaxed/simple;
	bh=kypLVVhGTPmjq/wn8UQaiwyObMGcV0zUaEAbZqfnPU0=;
	h=To:Subject:From:Message-Id:Date; b=taNRnZUK4We/a8KDbaGEKmZmtfXpCwuxg7Kjkqr6J+20xVxd5fNwbdqnqrf14O4VM0OD/9WEVUAPuAjWfXrGC2ajyAyfmWBtMb9KKq6KSfMATEN5O27U+hj8Monmrmm6MlC/Oulo297/H5n0ARjBSvBBmlTD3LoiFplsW/YkjYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mw5zIlUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mw5zIlUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754056793;
	bh=kypLVVhGTPmjq/wn8UQaiwyObMGcV0zUaEAbZqfnPU0=;
	h=To:Subject:From:Date:From;
	b=Mw5zIlUZeuvJs3A4bn/CtGBwEJWAT5gI05oDMqcXR6ttaSwKkrJGdjKr5Ql1sJpRA
	 KiK6/w/XYxYuxgy18svuD0X+cITk+nbKETlwQWTIeX1hWff8H69A4wOuVulTNGPKNf
	 xSJAbN9qM4AUdqahUAKmBD8NdZyUs0sKMHXWm4fqYRsycBDbcLZ5xtOGw603fs8fkJ
	 OjrquTuLkT06bZXsgzNlGfMEwiV1vA0LHCD39MIjb48bp8e7bV6Ropbj0OvhK2jDUm
	 acGH79wcgkc82wTzjnmlXufABmfsyD2pNy/wn90BBZtn4BH73OckqcTk8mmTVu+NL+
	 gK8SApHWnHJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F18C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405679358.29147.1164255102228483166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bb29c29a5d47e6121d722166b971058973701340a375e5f85705dd299a29d7
Date: Fri, 01 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754056793
