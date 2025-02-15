Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51770623
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739600934; cv=none; b=Jt9u5a9n0EHQbPO7xMeQv0hYNtzhO5ikKONVuecvPJAc+1GU+qT7LfRVeAlxfz02UdYLrZ43fQzc3XocRB/qhhzcodz3umrfh4AiHuaAEYS5jTni+SCGCVu7rkXeqQZV6L08x4RO4GD/UsBH8ekd7PdVlYXIz5783nWcUWvhHdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739600934; c=relaxed/simple;
	bh=YXw3+Uxp0keICOLaByEls0WaukGZ+sfSdI3yBJnineE=;
	h=To:Subject:From:Message-Id:Date; b=lUmXsrvxXm1Sz0WJLlUotBfP4nG7m8INhj68d0mrZoqmSXTFZ+E19fGAjxmBcgVkagj0/s4uLzBNc9A+b+p+PC7KFjSP4GosWf7S0AuQ1aBOYM994exJO+l0Ny+eR8gDPY8pYVFuS32xaDpT8YVzay5bNCMNOO4opFDlDL0mQYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMH2A83K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMH2A83K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E09C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739600933;
	bh=YXw3+Uxp0keICOLaByEls0WaukGZ+sfSdI3yBJnineE=;
	h=To:Subject:From:Date:From;
	b=iMH2A83KZZCznxA2vCnHvSwH4hUDvO3CEDqzKQFq52dKBSfFBMptguBO+cdxg6E3b
	 3KNKzW3COrtGpf3firLzSSBVE63iTs8W4Ln1jxY7GQGNsTjjbv+4J85fqcKEKlxyXz
	 6W17aV3wqiZ5DYKaBdfj6RAaQBLF7/XeUX6E5MxBrfxYbzKY01H8kWkjxktSEZF6LZ
	 O8WAfzkj25zUG40Q4vI1fv/3Q+90wkXvxBa/BKvDrLTPzFCmCWwTVAzfnrGknd+dlJ
	 D3pAnw/dsHMbUtQoF+pupBe7Zmk4plZBbD/8U82pxbYsKywYgN43mXyzb15oQCe3wO
	 ODWHvtjC75CzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F288C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960093364.4853.2431673011038714208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222bfad4dd193fe441dccbbf5819214ffb9511c637bdeecd445bdc38b8dc8d3b
Date: Sat, 15 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739600933
