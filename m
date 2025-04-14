Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAF128FFD4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744628993; cv=none; b=MwbBovqeWOQ3/LcupuFAO59FEhQ7p3Ld+q1j7O3KKji00zg7//tjv8YLnEjwKKHRHKBvV2kGStaQzMFB8ya0ZEyHx6cU8AdoXyLJNuyOVavjkFRRHTmbcDCKCcBkSpHoRlhrF4HgqIawhxIXlhfKoKxHwWx6EgwbL3QODYYr9tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744628993; c=relaxed/simple;
	bh=RhfeZDTcAFbQtVGOXoLusbmxMzsdRHfUaOxgB0L3onY=;
	h=To:Subject:From:Message-Id:Date; b=dRMbfkLe/daW1lQXb1wWADrm1tov2GYN9kbatFvy0VUVMf08LegmMK1wxqOGI7TYXK+ZGQ3hs5eT8hyFtPjdLnoI9FH1zwQLW1RF8TQo7om135YviZOjQSNNTo20KsFk2xbCjVA/bdbn3+HMDXnEATCxBQUs8qPhLp6jF0cHros=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjrXCIw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjrXCIw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A12C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744628993;
	bh=RhfeZDTcAFbQtVGOXoLusbmxMzsdRHfUaOxgB0L3onY=;
	h=To:Subject:From:Date:From;
	b=RjrXCIw4JfSdPawVwwHUvpqKrTPwbcGiXOO2eNDKS2kEeWADJoSL5pGAyFFq4UAsU
	 AV+AC35J1hbHYedTdRtWOVPk6a+yQ3qwMKXqPi7w01tPbOb/nTDawKjU13952PYq+4
	 cX6MfgUfT1pfPFDGrKboSUFaDDVYmUZZDVsJztUIM64+TVfqQqWCrlSLcBIFCgc41X
	 UwcE9k4qYulf1mfFDDXWqqkg2gJXMyiwIRGau+m/7V6WYkDDeXHFFC0cOThVQxRejk
	 DUajkqfQhAchuG/k7gYjyRcvwb/v3rzqtquzhL0QH1TS1fyps821eM1kpVpjILZhfl
	 dHRghkWwIq6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C8C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462899357.13704.3909026603759749317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718c2f27fe37348ab2b7db41ee70eadddceb42507b3144129c4d5ca6e516bba6
Date: Mon, 14 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744628993
