Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1820332FA18
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775809654; cv=none; b=CvME1PncEQyGeazE18nV+IHVOGHfbtzB6+JDMainbxSNQJHuAlSJ6Z/AZSasKrqbSy0DQzVdGkyDA2aiQZsDlHhTwMrSvMb26qGTl0YdLsUTb2frZS68Owsq+ZEyCbTqNsSnUbQhhWWL3CYuw66DGOkoaavUGjJBO/GdJ6QQTEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775809654; c=relaxed/simple;
	bh=Tfa1m9QRIsEfM3OZ48CGXABG0IEs6K6MiJ8WNM5WZHc=;
	h=To:Subject:From:Message-Id:Date; b=tje3ezsXIfE+7ZCu7eDpCwBiCXmvs5jg0USGR3lku3Kyow8n0lBQMh05djtftHw31K2zWvIKgnbdM5JKqMVRIPq/8y7nBbjPC6OERv6xnoDLoNF6RYE8h3lp9jnlLZN2MGZ27K4D1fcDHZdpekmdXOcIhf7nahqXV/o7GgDVwYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlcO4XlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlcO4XlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7236C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775809653;
	bh=Tfa1m9QRIsEfM3OZ48CGXABG0IEs6K6MiJ8WNM5WZHc=;
	h=To:Subject:From:Date:From;
	b=GlcO4XlOA3W0FZY5dyNe6nGBEA1B2ElBF3770VqQ7/Mzjp/1CerhgfF5/SHJ8biaE
	 gIAc44zmWlMI+fQsvrhECXntKxUvuZL0KN9cvJM28yD4HcKdYwsMDCrNoCAa/ZF8nE
	 dJ3EI/JBUjVLi1zZ54hhgqoDJBtkJg/F6M7OIkHyuKAeuehfL6wZ2675L3HULzgGyN
	 PXah0V6AfavfDp/vFxtVlcUfd48Z5ponBhW9RluWMUwT0h8wIW7CjFq8Ub/umJUFYN
	 6ZpFeGKCkbi3DPyxwC5kjmccbm4aXYLnIWp8r3Cg9FVGVXTVUeCYW83MJ/L2Qi9AEx
	 hfcXNj+0f07IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3FE99055
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580965368.16300.13344243326662213538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83325cb3f2501f4f1b15f07136c42e87c89a89249e7005ee1d7df8d20b1dc1b1
Date: Fri, 10 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775809653
