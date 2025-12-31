Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213372DF131
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767172434; cv=none; b=kxFFWmrs0JVQ7mQBl6dIK8NanCZMpbAzaUC3EtqutTgruDlu7jc0uhvW6jBLn8Np+bBhH1Utla4xRHjj2M0lVgcVshWGZwLi5W2wmGKgAK8WV2bM0LIKOyhkDyL01ULJYE11nw47iccYkiXBqn3IhS1K5ULwLweLabj7TxDBNSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767172434; c=relaxed/simple;
	bh=T/f2vHUPt7CahWHlsyYuP82pZtXpyrnpQa6X4iWVuaU=;
	h=To:Subject:From:Message-Id:Date; b=rQ1mUfyT7ZJ6+uxeD9h3LEIwSaDBcXHF4CF+HWON8chuAzSX/n6UtQC028++evihzNux5uwx2oe3ZDYTg0Ktrh7cUg2sC0xx+FHkY2lpNpVH+bQzmc+JllYvXH+okMwVQCzhuPhZEh2ookEXnCO1wmwrJra/SI9TnxHNeIzPx7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFJAKHNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFJAKHNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3673C116D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767172433;
	bh=T/f2vHUPt7CahWHlsyYuP82pZtXpyrnpQa6X4iWVuaU=;
	h=To:Subject:From:Date:From;
	b=CFJAKHNYAHOd4K22jTxyHwmxONiuZeS+vldWpJrVbt+RmDTjBMlP/Sq8khpr+plmv
	 LymtRqBHqh4gNtkCPwy4/n/QErnFXijPG6EEaeodaPgMHlEUH/KGa7HOtHQ0XVFeob
	 IAeSXQ5uin/ucRQMUj/Juh1rUxBe0OJ8zOP4UfxKFNX9bFrLjMqTNO57W8q2jveCcF
	 J/EzAtN5z5kt4GFLEv4fhRUvIKxU+CHHKlG5sJ6gKbSJUuzk2TxyCQt7tGKPh3ZoE0
	 T2J3E9ZEbDIsQQ4zFvI7OPPZHb4wiEwfz/PRNLlwah9Ql4eHKy2M45k7jaaSMTAG+Y
	 FKxJe66m9WhMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC1EE57F5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717243357.31141.187529352581561338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9021aa96c577983a334f55471ae44d6d233e1066197fd9750a322ecb5b9ac05d
Date: Wed, 31 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767172433
