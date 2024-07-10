Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A513328DB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720649843; cv=none; b=e0rrfXCULV8aqmSnLYI3UXjOuvjypLENv1tSuKy0wgNyY/73DqW/u8F+c5CnpXRhywtxSUte6EEcfzFqRfab+P5bx71DD0PIk3nVSHiRFKl+gP9Zp6ZLyEQtc6OILF+JwscZF+nF4NxLPDzv2q9ixpa0aggOJrxqkVXKB8lKfE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720649843; c=relaxed/simple;
	bh=QTJYjh/oMVHN5Hu2fSzQ86M2qCWqK/XEuRuBOwdnVlk=;
	h=To:Subject:From:Message-Id:Date; b=bXXR4Sp4ITG7KXUXsP1ssAZf39C+VhYh91oTt9kR2IhshfT7AG4v35JAHGOYo15MxXddaddXc/1QIw9sMF+sN+IMAnZobWemU2IFc9IQlxchWaggajZ91+ns4/GW0aiop3xdl6MtE/BQoJtoriABSAdDc70n/A7owHN2+CMEz1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjPG8Oou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjPG8Oou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1D7C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720649842;
	bh=QTJYjh/oMVHN5Hu2fSzQ86M2qCWqK/XEuRuBOwdnVlk=;
	h=To:Subject:From:Date:From;
	b=VjPG8Oou9AgnKxkRH6WkQKY/q3c68HdUWHyEnZK5xB+Prrj38yQvkfRvjRS89KR13
	 97+dLhhMXOGEZTWNZzblUwxnLjq4Zl5N/mOZ0yCpqVpFNfqbFcwIhaYqjlr35+A8oE
	 SVKzSqJgvHF5/thbngu3iknlHHAajpcDtTK//DVh/kmhx4VifGun8lzjhc/XjAlMQ1
	 iccte2U+gmqfEVi4WjKsRWcC7+I6aYebk8NcAh+PJHF4nkt2a78YSJNOw/k1hrZg1i
	 xuYXZseJOT4Xlq8MN+PRzD9wkIjlTEO3T9ZCg8DBfeSCT7qkpAAYPAEgjSKy8KkZmc
	 wlN1Snk2nIYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5EEC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064984282.25050.13473371888767031434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038f32659395df8deb7cc931967948ba4039483728615ea415a98d65b8139b9c
Date: Wed, 10 Jul 2024 22:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720649842
