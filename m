Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C62E6102
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749644994; cv=none; b=TDxAyvwWgwzFliqZZOzE20YYWuDcEm0EgJGmDxXLKQw+E7GDGC8CLhakyomEj6IBro3PJU/ogqGt1gKXIOBqhSCscRo1JPFV5sKRZbLanyEyxrQhpKVf2Pcn9zs5ZVaX9aGqEvEKjXuwy7ORs28tjqLUguiuHPBYdmX8RWdL3yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749644994; c=relaxed/simple;
	bh=7vW9oIdqe6p+/CI/QrmCeOhh/QOvf5hEksrR6rqIiK0=;
	h=To:Subject:From:Message-Id:Date; b=WkNsJZqj17xQtx8slZ+FmkfUxwS2dv1OsHucpm03DmYcM9caZEMbEkFY4Xqn3fM5BppPpz1tICrx5J5fsIQoO4PgcKkjZsxwc4zZBHOOITzXBbX4cRBcTk+o2hiLZEviBQFy9sqo8hngzBzrtQn3zrY3QeNf1Igbx2navTvkOjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXX9m4Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXX9m4Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D65C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749644993;
	bh=7vW9oIdqe6p+/CI/QrmCeOhh/QOvf5hEksrR6rqIiK0=;
	h=To:Subject:From:Date:From;
	b=cXX9m4WiCZdbHUoCal5uRpJ6UjKFqsz2MRbVfswTi4eKr5wk6GVTJ4TvLD6qEolNR
	 p87Ex26edhpGha/7FpJv1KykA32fYY6P/ByIt7hdlQenXx/KHGiQhGdWX8xj4pfDKP
	 fxh2bG560JhDp0/T17jPh7oFkTy1GsUqM/ihIMPvRSwGL4zVHIhB5oaOMib6I+HK5s
	 5uyVcJTKIvEsnP6W3Y61PuHydJRGpfXwI0/VkOqrV8AoEnsrEphBN0dz+kIArgubK1
	 ykda88hO6aKf7KR9D+KuLv+EoCb6UjHcXR1ZnUiGlNyYEGSpyu6GBL4xsjTAB/SaQj
	 HHUl9oeIrsbfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9FC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964499358.15296.14374586169362152379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7f5af3fca60f2fbed95627948c9b513dc09cc90f6adce1225431978734fbf2
Date: Wed, 11 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749644993
