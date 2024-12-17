Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A05417753
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734452754; cv=none; b=uZsM1VDK4Cn4+1MGFf9vIuHONCPECbhq80X7akUWOCgwzVN8IxB7gax1pSBnXyFe+0muwWu1O1AlWPRBQvKMzX64N4bbFQarrAXqWtINSy/LQo1WRwTXIZYOL9FGfrQC4vjsAibXoI/aPzA8Nm3oJWwXfKfBCEED50TyzDJqJsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734452754; c=relaxed/simple;
	bh=vVPHoK5sHZfYxCMxVpv5ZWm0iQezPS1qKjjzwAGEl7U=;
	h=To:Subject:From:Message-Id:Date; b=dwcmTJ/U27FuOE8qMcCXa1U8PeFAVUAf8pFpsvKoxcxu2egpdeFlmXZnd/lWtrIUd5hgdJWnXBkIvN9cFFa6GtCt2jTha7iNBXLHJicao77pld1h4rFiS/7g4XHgHFVkY9yXWlxq53Dxq2iEt3h6GrDx91wyIDMK9tJCMF/tjkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM+uyyzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM+uyyzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA78EC4CED7
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734452753;
	bh=vVPHoK5sHZfYxCMxVpv5ZWm0iQezPS1qKjjzwAGEl7U=;
	h=To:Subject:From:Date:From;
	b=eM+uyyzR2GUMWp0QfwXbRlHXhy5flg9oDsyFIC5K5nlFjbMQu+NPTWTfITHNfARHA
	 b2Zz1er7ypkdFOS/102GKNu5+JKcjQTV4NgWwB6ZVtG6a0sG85F1LJFMvAJrPqqpcl
	 21HbvB7VobLddxUWGcq6C2EGBGwNLLtntUHzu6o7h0R8ThguFf0tqKR3HQxNf3QE+/
	 HhK+7QQpDJbDDBnKWwcYBDvoEvQGJm3uF3uU5CVJtu0kotYBwL78+cHM6d+7Vk+6ip
	 Ur0IFAZ9bHvAUBecFDSCpcoacUeGKgfHs8yoS2IfTEiwNzqsN44qJysgVbXCPei26c
	 y/Ae32HHMY3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CF5E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445275361.31552.8961370415991591028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e71c74bcdb197f4b85b1faf13b17d318f247239cf8b626690a461f1ff3bc83
Date: Tue, 17 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734452753
