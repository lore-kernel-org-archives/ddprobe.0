Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2C61F4195
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741841334; cv=none; b=QKkcViY54Ix05NSofoW9S7tylra0yKKYXMR3ZdEzYkhyfvvoLUpe8iUFc4f9eppQBJlKlCUW3E82YKnLWQIJr9IX0iwPqPkFwuMNEmjH8DgKUKOwwl4VzE2Ku+QuxFmhFjtuQ1kWb7dMqljBpN3+BuQQ2sMXsX5+sAkn1zFmJ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741841334; c=relaxed/simple;
	bh=yZ64BfGhlomPKpk6tNJg8y7E7jHFCgDxt7+P9tK2weY=;
	h=To:Subject:From:Message-Id:Date; b=Edx6vt14W/HSSjdJMbm8IprMmPBopMcQpMN/tRVUlWO7AW92lYvbbhstgGEpbJFaJ3GgBdMo3rxA2ACvyAr5i9whpOWGmu2b5uZzpMxaT/PXSSdDMFYkuf/uvlsn3u7tt7VhRqG6gIjKW82HEXYBHUWXm6ZwT+sNyVbKvDiTrpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp/CdQlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp/CdQlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8137C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741841333;
	bh=yZ64BfGhlomPKpk6tNJg8y7E7jHFCgDxt7+P9tK2weY=;
	h=To:Subject:From:Date:From;
	b=Kp/CdQlfkbnGKwek5TZw9kI4qdVEYseqizgEkGPf+Ghskw6x/VkqQ6GPNda6/aNbX
	 X/D4WcZpac4s+za7F+aT3c/jX+1+F1cpDRkqRJ0Pa9N3murgjiE9TmDb6iu+G1IJy8
	 FbZgakXcUG/67Se4EKv8k/Gs80Rt/QsCgWUoHjHR+gZ42TWD+HFYqkpREsSDafoRwI
	 r+FTp4NG1vIBusMba+XE0FgNnRQ3z/hcJnAYMzvG6OGp31UcjtYCe4BJxVnio0ONoD
	 828LcYITNGJNxS/qPyQh4/WmzYu0OlbhXxZk7Ti3Dt4jvpHQxTg8y+KEj+Kjb66qjq
	 JSuDrfURSE/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92323C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184133359.29110.8516640213276851871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf835ea65d5057ca44fedfc05a782dfea45a28e646cb84401791f6567223a49
Date: Thu, 13 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741841333
