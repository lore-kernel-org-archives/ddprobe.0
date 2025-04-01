Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C853AC
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743529794; cv=none; b=p7o0SNeeEYX5NrMYMtCETnzX4rPm4i+W8KYepcxnMUXboCFU64Mxw1xy1+F6xlr13tv7t55RHxuuG83Y366UYbz01vcnsJNg5Nd+kyAsmqzCWT1vYsZt76ZEkghQg8luby2DWy9JwCCL/KEDP8xDq/9FwHr4IVIGe6yZu1SzY+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743529794; c=relaxed/simple;
	bh=+zW26YeM5FqxpTtZO+7nVckidMd1Er7q04Renj2xyTo=;
	h=To:Subject:From:Message-Id:Date; b=jXDxscbjvXxLZXSeO3zXz+7W77yp3q/+irre3y+3sW3jqQm3CauTK9e9zqONMVjp7fyKIZr4nS5/w6ksyceooNwSQ1Q9StabvtaV0qId1UJY2S455bAINL9kXXU4M4wyjUjRL4OKRVBnmSwf/1UOhA+tw1vHQaUaz9DtK3VgMJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/r/f6Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/r/f6Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02BDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743529793;
	bh=+zW26YeM5FqxpTtZO+7nVckidMd1Er7q04Renj2xyTo=;
	h=To:Subject:From:Date:From;
	b=q/r/f6Xxt4CyQH+FM3hV+PLYVoXC1EcgdKmeNcH6ANoHJ/Cgg5tKVzkeQiz5HrURt
	 DC2/G4/JcnkfKnI0YgeZzEpXPha+S4n0tt+WaTJAhTIzhgvwME8vZ3j4DrPrl4FIM4
	 OujbYaTuWmvtxxs++Jd00NtbPB//veelQIudCx4DLi7+FRBMRhWKLYWBxf7e1/vEtl
	 5ryH6Yn9vk2ffh7uzEChcV/cOpK2caXdru0tYPlMtcnk/qvzOR13AOkokH6SylvUk3
	 fgaL0mvtedTpsHdy9QatrG6sJ3T8dkor9HXOWH3gTor8wqPAx3l5XJPLxV4HMz2/m6
	 3BRG1VH882+qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5311C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352979362.349.18081330849348315731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af28d4623c9b1da67143a09f7a253104668dbfb1c206df5ed2aadf6962cceee
Date: Tue, 01 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743529793
