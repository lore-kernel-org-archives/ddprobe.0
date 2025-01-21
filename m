Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BFF187FE4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737480354; cv=none; b=VgoY9NQ8hq+9hPUFIjKsRM1Sq8Gto0bp+73xe2RD/FXUwXbbj7gSKMjv7vF6xjd2xZWU7zDAWi3YjnKKI2dASgpGp6a1wfujncSyFqoZlCsCkHZOhoa1AtLF8ES1oH3hJE5UbKz+gwe7uxq45lTUmBfX8+xAGnU0rnNkieImK7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737480354; c=relaxed/simple;
	bh=bm4Zkw023NMFHKNDS5vi/GRgDrC8pxhIw9ztKO1XYx0=;
	h=To:Subject:From:Message-Id:Date; b=gFWKo/6w5J3mBcc/QsbVQncP/gEiJJB7GkYR5cuoe7QWWEiSe0DmWvPmNt0SHeYGr4N7JWaMPSmfHUNsnG32CgH+lE28tcMlLOdCruBu4Feri+P3WDEvwj5SZKms+HwtoVBSQ0JHJ6TmCkUQPBdHo0IkIsCzE+5hPHvc/uV8xQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tducl2He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tducl2He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC371C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737480353;
	bh=bm4Zkw023NMFHKNDS5vi/GRgDrC8pxhIw9ztKO1XYx0=;
	h=To:Subject:From:Date:From;
	b=Tducl2HeqTrbbAEALfBO7PETdBn1+gAo0wEIXn/ATbqTKBMplizcXJ7R9jP4I7DNQ
	 4EGgYVUEXrU6AZZ99DzhZAKbIaxTks1ChQmspd/st9Iokd8fnNKTzEpv9H+1sbI8yA
	 pJ0p3chlZHmFB5nV043jK6As+QVWjdl+MYeiu75L20oc8JKBeRZm3HSY0UPtbuB+59
	 N6QFQwm4WqfPlPrrF1oeW8lJUp0VLMI33TjCf1mkk3q0Idmy6o/PDrJezKSCED9rrS
	 LWA7vK9+vHHoiQmgqGILz5/NC3l3HkhSkbtH+xJ8WrYu0MQbC55i7teD2sUbmlTxyo
	 FQZyEEHXIF9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D9C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748035359.560.12834200943460993565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2833336aee377b9234002e5a02ed985048751e968ea4552655b7fe0ad0285a18
Date: Tue, 21 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737480353
