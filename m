Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2043C13635E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765440174; cv=none; b=mmF/ywE/lEyFeTgK+pdnbATQs+ScDUhmmhGh/KAMFVxVczRgWh1p/uI7tfwYlX+3uz2LLNTGQBnDJRnI2h/stWr5nHPqTu7kYbCnSPEwT5K/pW+FFVeq02pgj8rLQ+RuDML/a0WW7oyY1z4GZHjwfMrzON73glAk/fEK8Tlg6ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765440174; c=relaxed/simple;
	bh=6Tcy5U/pjY5wx37iEvGftaUnEqdHU5G5w9TgobzkyKQ=;
	h=To:Subject:From:Message-Id:Date; b=kPOPbyLHGIBRlahr2hXdKSRQI6q5bMjfJUtOHst+ZFD7by4iuCzMNL1t2+PseBnIlikS4/rhvlVil3sOA13N/BsjQ4VnK5hQphu1EIgg2NtNW+7O9AcTrhL7WvbImRM3XZLOZgq6qr4pSHQL+bQYafd7gM+u9+XRt3QCZ1quBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3aR2DYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3aR2DYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9FEC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765440173;
	bh=6Tcy5U/pjY5wx37iEvGftaUnEqdHU5G5w9TgobzkyKQ=;
	h=To:Subject:From:Date:From;
	b=A3aR2DYDjtMImz3LXzHwZ55kTVTIyeIOQ+R2j2P83fx+WPBk4nE3S4Agti+vEWIOu
	 7FsUsQgSUPUfU2B1LvRFzChb5/c8Z0UcC8uck2oEoMkYl/sLeyL9N5jvWkulBOKn9/
	 qnZtx7rVaZ2b2hauHMQA45kKkqX5m7JTY3xrPXhYZi0ntoMQtA24G+Da0Iaz3fPJK7
	 4D3mHRjX37HXnBsrJCPHzIasYA3+bqsMtZh97k7FhNlOTL+AtTIyLnc6kua5jVY5qH
	 0FNs3ozlfQKgX8iYB8TgOJbJGw/rLq3ReRaLYlJAjwT9YR0IhdVZlwmWFvoz9Y9TZE
	 8I7jrSUpwDnHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD0D41C01
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544017358.13188.4190801456322257723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2284bedd25e8652a624c308ec04bc13d82db7468744638448dae9788fe9112
Date: Thu, 11 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765440173
