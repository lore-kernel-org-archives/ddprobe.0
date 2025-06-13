Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0478F66
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749775795; cv=none; b=GcOk0fYM7FFPdlDnpeKQqhN0lBRfs9hogOlc/O5SWgtt8rvaUUoCej2cJZ7h1b1YbNmFV+sipfmdRbNdQYIUMiAiO1Kh4UveHBEfu2r5/TmqdOH3qXe+pmOSpvvkyzPWAFJaQG7ejrGJgQ2z2j5RxjgC5a7bkCGtVHxSfdUKOo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749775795; c=relaxed/simple;
	bh=kVEPsTvvgpIptxK4A5R28oeH/DwnCRd4Cet22BJOpNU=;
	h=To:Subject:From:Message-Id:Date; b=j6sYYLWgyiC8AH32oop9ULfFI0sIV8EApxATC42pVT9M65WWbyHx2/4X7AooOWFaSGR2QtTV5tOQ6HWS0tt6aokvy+DkKWU/i1yTJFyw7s353tDGWSpOyid8m4n8xL2oUw211oqD4cuXHkScxAcJcqdughMLukrXqgKAo2WHp9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spW7qzDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spW7qzDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8065C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749775793;
	bh=kVEPsTvvgpIptxK4A5R28oeH/DwnCRd4Cet22BJOpNU=;
	h=To:Subject:From:Date:From;
	b=spW7qzDBXqY4wTCOKgfm9kJzG7a6PQ/aG7t17ymTVpa5X3iIGHkNtnl7xZ516YHw1
	 Xzp0i5IOYRsyUnTymYma1RK7A+wqjV+tK8n/2kSm3S0Goj4hTWr9z65pwMKOFxTCTx
	 /q5+Qp2dLzYJjdIjBvEdpi3Zu1ytXLDJqyqVgTqoQiJ+etHdhJQC/IcRHI3JiblcQO
	 yXZdBvkHmkBhW82YoUTSBKBAlCtfiW4Dr77/Zcdh83Y0iJKoQcI3M0b/3eDJ3hMSH7
	 VcPTGV/SC0gd9rkZ+qkNx2gdWuiZVfumilJlmI6xlR0XeN+oEc/g/0VIOliZbEh3GG
	 DDRD3+Z9pojqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A63C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977579357.10199.12045066182644370810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d53de7dde7386ec922c6e6c314dae56e3c2dbbd5152d083ba9d60543ac6223
Date: Fri, 13 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749775793
