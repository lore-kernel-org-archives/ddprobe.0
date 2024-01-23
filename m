Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B662714A088
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705972096; cv=none; b=BN4SsdV5S/0MbqhPAbeMMliODHrK+ZEloXI++Foa0SXDPst0gDTBM9AOXO9LXnkHYJIMphFYVZG+19qxMr/DdH7z5eYJdYb37uxeZig7pBjNe/Ot7kvgqd2fRsbTUkIL63VAi2XEUgGTdlDq+ZR07sm5+xPel93nAufZFsC0z3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705972096; c=relaxed/simple;
	bh=zw7qjuLcdPZOXeieliEWwsY4hwA19ik8caDPDW9wjP4=;
	h=To:Subject:From:Message-Id:Date; b=XGHmQfNGA4KOha0uQSOtQ0zAMKyddEHvEaKlR4YZMNUWsUkp5B+D8zzc+Dgm7TwLbFbjsUYFbjewQIlZJ8F//4Q0dCvgsCOrPu8H4ammaRjet0F14PFXlN4wQT7yhNH3btJQCF+yNelKJ5gTK0mnGU2XSmf4Xlyw3ucoscBJnw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsPEac1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsPEac1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EFBC433B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705972096;
	bh=zw7qjuLcdPZOXeieliEWwsY4hwA19ik8caDPDW9wjP4=;
	h=To:Subject:From:Date:From;
	b=QsPEac1+Pxmtwu30e2k/aZuclyJ13j5QL3UyYSb9GnHswTS+8KZ9x2gjVWPLADtls
	 +Y6JYVBTWa+awTrHPbT1DWYJepOiNfR7iB+Ru3ysdLlNvX3LqGdSz1n/L3TWy+7Ioh
	 jpizMNnLYSKarDSnJAm972MMmo+qp/ScXIBjO2M31LTTvbzHZ0HhM41l8DwkPCpWvw
	 fNMq+yYDE1b27u9JdN6TRkNqlYW7BVQnSd8b/zHFggqi+85YT8yMjDNVLOdb/JX5ph
	 YMeQWH4Hqn16l246ucjeTSduAJ+kQrfMGzrSMctK/ooubsnvAuFlKckiVYKBk+lDdO
	 D3m2A7OijiVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DECC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170597209639.27821.9759980255652381198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bdc10a4780eb9b82c037b5ae176e4270096e15857f23580adb7c40d4b3dbf2
Date: Tue, 23 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705972096
