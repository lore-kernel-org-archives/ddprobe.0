Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB351B5A4
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724387754; cv=none; b=sO6G9ga9pW2Cm7aF1vBJ3J23mud0oMjKZVcAVZpH6XgSDgMzT2G5SuDFhRALu9UB4O36YdlCrvFI6ViwzzU+kcfDGlC4BfweIJ+rNWxCoxFONeIObueN2duCIUVpcRVIskp0x4b4h3cj7PfG6b4IlFjQQJvGBu53vGtzn/Wj888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724387754; c=relaxed/simple;
	bh=+EofTsfZEootuFuk0HiAxndi/woKi/mrDq/Qx5CP9A8=;
	h=To:Subject:From:Message-Id:Date; b=t9qd3wZMo/rm8noughkbl8b3LfB7C9ly9t7uz2FBeWj8C1dG4WnuuV+wXucHg0YN1I7YU+DvLQBJ7CMxqNnkGM5SDvJbkA2lR5YnwErXB1+KZQ0FoIVB60LtB4Zh+FkGjhAGbPdIJC/Thq1OXRlJl3CKydkUH70n0HF68rNBiKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+6lxQkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+6lxQkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB06CC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724387753;
	bh=+EofTsfZEootuFuk0HiAxndi/woKi/mrDq/Qx5CP9A8=;
	h=To:Subject:From:Date:From;
	b=m+6lxQkxiE++2mmuNxo81/3wkN+ADx4rYh+1l4MHIFKmx+BriI7AIrUA+WV/OcltN
	 fYS9pkqJo8Chsq+vN7wfeUi73B5KCSYKU+bXdLoWul8TyNJhMi1xf0rBmB/kh6tl1h
	 LMD1mwpaQ8VXrhb4XsnncZwHmnEE7z/qhPYqya8Z56UpzPBko/ectmSLu7QYyaJAh7
	 2ufHp2KcQYrnjLbdCbD+J6z1TQlYwwKs2VDPew2jrz6qWd8wdyqCpPNa3kxV2j3/Ny
	 RWaNhkdxvQ7A87RttzLcbDsFODCHG24je8RIpmcU+pOC9mnz1wFnaHu7K6RDg8sdEj
	 kzgKGKCPp80jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75C8C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438775363.4889.17460299152927433668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6707f90536172c80b91140c7f22215c2e10ff7601e1bbc544d7940227eef28
Date: Fri, 23 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724387753
