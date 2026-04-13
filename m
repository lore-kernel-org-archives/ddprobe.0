Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D25395D8B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776065854; cv=none; b=lAe360i5QM3/BL3K4CO1QDzKa6P0WKluKmHu8ReEXnHfHsmosWPtedJL5uvJhTkzfRPGow9mje0QT2E58SKI6ge3ZCOEOHX2po6egPK+B1RiI9X/+OtoETYdO8iQbjMRarYv6LngPwOsFj/L2dv80rEf4xAVEValiE7xTeaCABU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776065854; c=relaxed/simple;
	bh=AE+31Xh/bQ6/51tAcV6Ld6qtcZAdEn7IMrjfKJpaUfg=;
	h=To:Subject:From:Message-Id:Date; b=PeagFd9YLg8waj0ac1ouW9BGf/2GXRxYOo5zofuCxe65/c4GHf0NA3CV0oWEwNe2AgnatxZ3TbdO9zXDRloP2myr/hQm/Oo2gkz2Nl4gu4RDxHAC26zAC4lRd83tOO5HSEBJAEvogj1uN+UY4jXuimzjNl7QgvUHXhD15hkO3O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRw/pSdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRw/pSdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA47C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776065853;
	bh=AE+31Xh/bQ6/51tAcV6Ld6qtcZAdEn7IMrjfKJpaUfg=;
	h=To:Subject:From:Date:From;
	b=mRw/pSdZJj98f7U6scGdKRzY7RcPPzi+ACqiqW5urAa0MXQfRbyj9/K/XLAdOneFC
	 QVIdWNUlrbDI6C9HvZTXGgEXCIlyxn3Uljyu9LNjHYP7QEiaO/GEr8dlKmupUu2/tG
	 kJgqyFOFBQXNx5nb5xQjYbm+IpWEBulJ9V1g1DmkSwBEKMwxEzfFzP6IQie7Fq+bk0
	 zAUBx1q42130bza6Au35xZJ/rDdBXSYQdvAUZ2IEcuGQ0Y8VqI1llLl9rTFjQO5tvT
	 b2F5/V52dhicDrlNqbgce35GDBpBCu62uW4uf7S1Ms2Rr4XqucqF9bW9H4czxQcl/z
	 /ELzsZuK0ojsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E3EBFD10
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606585368.22782.12156478131235199197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abe341885726043f6a071a3604fa90fed9c175c16176cb06f2e7533cdb39510
Date: Mon, 13 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776065853
