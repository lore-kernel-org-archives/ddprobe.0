Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F297325748
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707517097; cv=none; b=D05NRkReQrnVJ+fZBZvzos0+PWoMTxncUUGpnO1RA8I3rqceu2GlV5jVdXgwweL2KM7a0itwSCy9MHl30n4eIy/RLhy3rAS/M77BGXIlo4BXdqm777rGHr12aoASwVSqwxZwdE18pRMr5QbYazVrRq1IlxlqaoLqZfUaoy+HyjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707517097; c=relaxed/simple;
	bh=d5lfiUmqAqT6DBNhf5DJjkTPzxPviZV/qLoRlwB6LnQ=;
	h=To:Subject:From:Message-Id:Date; b=A+NmiUgQrl9wC7OoPYboUwZKd0YsZCACv9jHFagogEpUzECUklJ0UusTtu+kkPV9tj8AqUdb0sHJ0b4jDV4eTCVvKtDkKvpQmzFKm4/PjdlKGTV0NaGnr/actNrnC1g4fQ1hDNlz7eUfGCMXEoSLLK6PH2BRNyxXzIfoZb8SefQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7sp/yTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7sp/yTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79426C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707517096;
	bh=d5lfiUmqAqT6DBNhf5DJjkTPzxPviZV/qLoRlwB6LnQ=;
	h=To:Subject:From:Date:From;
	b=a7sp/yTlAqMHpFKYboTAZedgUCj3I3SWIbHh6PzzMIEYn6wdQBjmpLRLw7rQUPG8z
	 FqPPq0Bxvrqkt5wKIFKPIDjP+PFsQvCOYUBM472R/eZ51RNVu3NoxvwoNOzJAKjaA5
	 Mpw4F/TY3tvJ7O0M77L8M4HtVutDc09IWRCdBfdA17vt0+xPBhQeB5TbOMa/AvzsjV
	 hLIC/H2K6Plct5GCEuVUeXDR9bezBY1czkjAH1wc1+L6cYOsmyJYjqt3a0J9hXLREn
	 zY9X8kxV0+rKPR6NFU4gFmoR9D97CGlEOZdFMTM7YZh0NVtypUlL6+wQnb3e/xJkV7
	 lh8fwtrpdX+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60503C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751709638.26526.8078004862797229418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f438b2d9663515eacaee61604090a4be2e9e2ec82336116ae1e553a266323bb9
Date: Fri, 09 Feb 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707517096
