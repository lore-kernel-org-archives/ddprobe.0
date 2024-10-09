Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18011E3DFC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728516953; cv=none; b=ToHDfJm0j01+opgLhPmq+fL8Ut7V/CmbPY9bN4UjTzKO+pAv4Z2LzZc3cYyAFtVtT0uZgEeZuq+ziAUmjcPl1FkyQs32/Ucj3gl7fMFzRVBmflRsi43kfMvrc4v86MXqf8SNbqcfhZA/As1TRzqgQ5woKHufxtqBvag1E9sY7Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728516953; c=relaxed/simple;
	bh=GNcweybm3E0QOaiPO5ZJIHIt8agBJYIWju/BRDD9j8g=;
	h=To:Subject:From:Message-Id:Date; b=P0ZCgY3+4zPj759wiNgTj9EQdwg/ZxTGUPhwHpfE0hsAcKIf/NZw0Q/ruEkHsomoE0XbvpqEY1GR23+QxVlQ3FPqdV8bEPcTXQvQirhZPxiDmX8T+/S2ytXurbpXpCUcAw69IpbfQwR3ToSJRpVyCK2td0UFW7x+3L3MWAS5xAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/SvRNjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/SvRNjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEDCC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728516953;
	bh=GNcweybm3E0QOaiPO5ZJIHIt8agBJYIWju/BRDD9j8g=;
	h=To:Subject:From:Date:From;
	b=Y/SvRNjpm/l//9Z8TY6Fq9a6Ddy5f27h2SzC1WU7+ejaM9j23H2zNe0h4omQT7csW
	 MtmgyqmSWdbYTnwneqF4OiyETRDhuGjJb5xuSctyCm0nUv6ovcoj6eTSsMrruQfN54
	 00XDrWzF2dxHQ7vf0l69TnkzS+GaL4B+izHmicxbHo9GIC+LYsMzFyWgXOw1/WXr9a
	 2zAvtIC/PXKuCLSb3s/bRD+tMnuhBgeNguxRv5jMkwlGvtDd8ZigVvm9CFCKhFZFJ3
	 8iltinIDcf2wi1Clnpyoa9Wp9a6CrjTdkivl6H5GzkUK5eAtcOYEkKyq6N5xS+8nvH
	 nUTh8OrkJuV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B324CED628
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851695361.8899.7489303746179460985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b68101147078406b993bc16a3629273fd40c0a30f2924d61c97f614fe17e0b
Date: Wed, 09 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728516953
