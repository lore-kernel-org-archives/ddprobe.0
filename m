Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A041429033
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785828034; cv=none; b=e41AqAd+Wi1lXMYPoejtfjxFiuWVzTq72fAg/HArDHYSIKvpBFIoA8EGkuA6kKviI8PXbJ4IZwMTzsl6+mHo47X40aVARvvDGLrdQM7IhbhVTjdzwsq8tP5uQN31wkisIvx1eonUY1EzshtNKRX5RdfMVT9EaMZwNW0O9T9qRdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785828034; c=relaxed/simple;
	bh=QsIEtbOPOSE5Js9LawcebsWckUCLGlICk+gfJSgX4OM=;
	h=To:Subject:From:Message-Id:Date; b=HU8rrh+E52aqBT5x7T29AxgOlL0LpF8dZLwTRrMFEN14GaIEvM6VPPy7TEzGXRJs9oJ4Pcvay1ztjU5ymo+jdKKeRv/6JuY/CaqQa3s9Slj761alc+KS9pKFRC7UmwY6gyi3UDydHaq0ch+e9fAz+BkcRKsdmuVSHPkNsue549E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPEa+7TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPEa+7TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F33C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785828033;
	bh=QsIEtbOPOSE5Js9LawcebsWckUCLGlICk+gfJSgX4OM=;
	h=To:Subject:From:Date:From;
	b=HPEa+7TM7wXn3Zdrz5QanrdSa0S/NR61P3CkG3uLoYVYCkoqyLE/6VNV4Ikq8Xopw
	 pwtZfUDoAXPRqQuSyb0vTTy3pwrwHv1xvxJrQtDFhrLVH9tUKW54uSJgxE3LKH1dC1
	 t/UmjjUiEC7C5CQdEFOqvKbEa+XwtZlmBO8X8gwk3vbAX3M5dxHvKb8Ej8kl1ZOfJW
	 NpZwWFiQNmRMaICKJqqZOc7wXFJTy0gh4rJfAsGcuBWPIxYEVpSZonofPiNQJrOpqj
	 Khvm6kvK8cONCARAJuevADQ20/l7wsLlamefpZCmVknatiILeLzx9VpBloWOdj/nUc
	 COo8bL8TL8mwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE814C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582803370.22800.10563929439896812562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd78395ed04b981c85a8be162094827c50b6bd0f51713096cbb41950978507d7
Date: Tue, 04 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785828033
