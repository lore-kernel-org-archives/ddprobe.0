Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2067F1D6193
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749282594; cv=none; b=QgpzqPsbpkvHSIU/RaDHD1RV3N+1bH+JTJjsk6M+mH6RA8froqTFfqUJkWikO0q07TBwy74PglzvSGcfplVljO4u9cDYtEJb3UG4UWMg1JhGOtb3u49CT1J7PA3QUSIeHvMsIIAABngBa0JHRwkx9zZxmHDSeJU4ABDEcEns0hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749282594; c=relaxed/simple;
	bh=qZsdm7wqRVQlFISJG8bR0zBVyAtol4MW9yuGUOkqDQw=;
	h=To:Subject:From:Message-Id:Date; b=gIybysbIQdS8RVYH+ygf0FtB4DHdSSzMDerCEZhmbrpRpjsUC/NXEPl2efezYK4YS888VJzFsKN9FxomPK+NIvwm98+oohFN/SOp3ZUKz2+nsNbqclQGNwaXCE8oQx1YDwcHKduPRSdyYwy8rE0tyCtM/G3AwGfQBY0/RAmfMn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKp3EiwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKp3EiwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749282593;
	bh=qZsdm7wqRVQlFISJG8bR0zBVyAtol4MW9yuGUOkqDQw=;
	h=To:Subject:From:Date:From;
	b=lKp3EiwJJ/IpQd+xMm1y/M9MJejtBX9LJjjTD9QSMkh0fP66rlWp5lx7QRjmGRbiC
	 FXvcg+xY2uNQ0kVYHOWEyZPlZMi5MKCSogbQsN8TfbjUfTc0a6PhvBugvkxwutOuSM
	 QC3gCFTsh8sJiRFvgj+bEesdt4EYjBKQtHejngthp5SvnZwf2M3tGPZ75GLptAURDy
	 sDKxYyDJBoa4QMj1WVqaO8MlEyhJgtr4a2PzDyqqTcgPNmpVyebj+QJGsjLWo7nJmU
	 Rx+lhP3Zfhit0OEeNLzbrtUohnSKhhhidcISWH6GEPuCq0rDO8QgEHX1b3VrCC+/+K
	 LJE1AaGrZFvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F951C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928259357.4443.4774532555227220099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3d014ba785093f54b7fc3b4ac024cb90c87b5d6beba055e5150e9080a403d8
Date: Sat, 07 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749282593
