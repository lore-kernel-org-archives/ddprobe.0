Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213BC1C5F27
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766729034; cv=none; b=IqKr0K5JajaMWXYyeKJG7dFnWQNYuUZwJ89jcVSTy+2CTe9hPGfqkq1S5RQz3uSlRwR+3uaXs+bFC74jNHp3uqO1zhjsvffu6NcyZ3axI3IwzhnAFFiGLvXhKNoHyWES0uvk7LCFhC1qz7X3qdwc7mZtHv/x+qSDoTeJWpLmBmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766729034; c=relaxed/simple;
	bh=sFg+hKwhcXUfnWqQ/p9iXnNz8+SWI62BjJDWAeFOuDk=;
	h=To:Subject:From:Message-Id:Date; b=aDE03JEYZ7OeMU19KgBCUGG76E5Jqw5zsRpgpdwhC3eQnpkH0dqwl/0C31iofv+2bBgyfyj3/7BnqHmt9mizEnMEJjaWneJKTw0msI98pt3i78BRS+lHCl0ukyWvi0A8UFvN4kkoCXmlSAGslbgtdr+BL2Pja9Ch24mr91vbICQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+nzM+3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+nzM+3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766729033;
	bh=sFg+hKwhcXUfnWqQ/p9iXnNz8+SWI62BjJDWAeFOuDk=;
	h=To:Subject:From:Date:From;
	b=B+nzM+3K92+g2xZm4vt1rQpsvV/f3Muw13WVQDsWl9K/DvM/VJ1+ezqJgrGAbaS3Q
	 n+g1b5lAJ9GWiuX+JhNl3ywNS3oYehSWwmWsPy35wz2/MQIufDbz8Y0jL9hmLUd5Mx
	 ssRS6RD1r66Uwpty2rYOdtNZGxmEE+42BmvB5yMbO/3be1U8OXaLZHEXfLTqWuY/zc
	 Fc2YhSOXknGAnEQddDK2Hn8+PUnZ8edxbIYmAplHNKUrV285xvvQ09q9dNO1VOQ0eQ
	 SyKhRgwnXWQC28ny5uM6eR2+s/UhpJ6p7GF0nxZIuoH2vPN8+RU2wrSN8xqsKUelss
	 OBsil3M4Dvs6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95243E82CDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672903358.23751.4225050419831428272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61cc4fc3e2b2ff118c0d003049c583ccb6ab099f9fbdfab3383e8e4ad223b0a
Date: Fri, 26 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766729033
