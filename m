Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1906289E13
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777884454; cv=none; b=eilFIC7gGBqzN7mFjVVuMlKRH1ZdWap/Yzdxu6ILa3iFmKnYyhfOTYMcixr7jVXfyyyr/kvX3R2OGPdm/u3bjew2B5BNm3jDb1SsrInyrkGJCk8YwmAzUT9ssF+gHTKPO+5tn6xUj1JNkw/QbRmDFnFLx53ud7vO8eTPaWRTbKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777884454; c=relaxed/simple;
	bh=D8mwMSzcfMIuTG/MPa06/Arplc5AaiPxZcdWOwtB5Qo=;
	h=To:Subject:From:Message-Id:Date; b=MDzFdTFMDrBoMc3Oc3ALAURXFkqXRtnNyAGluzbwkAU8Dbs/0beMYSmlfdTNSxTzXfC5hsWbvRysea1S+qa+b2X4Pw/VU7/XGxO4Js/WNQkHrRecVksyZf0/UeVIMH7D2wO39jdOc5fS8lHcBFX7Vo8LtBFhOxVv8SBixmtIcK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7zJ2Lhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7zJ2Lhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AFCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777884453;
	bh=D8mwMSzcfMIuTG/MPa06/Arplc5AaiPxZcdWOwtB5Qo=;
	h=To:Subject:From:Date:From;
	b=m7zJ2LhiTSMNuEoMprx/OezU2JmKtUbLnRXkmHIT0MYy4w6NY+0Eklkg26r/EuyCR
	 4bVMOTayf/K0BKIu8NtVV9gz2VSMHwGHaBn88c1/yuDuZKXILHwhWXR5ys04BBijvt
	 Oi65qOY5tGhxFz1CPWQojOwB5nK83f2HjcpBTUcqO1dfvhFRhBourjFMV/tkNT+eHC
	 ZHN2JI7AhwpodjOifFVJOjsfzEjC5YydA6ZJ5Yj9RM8F6jBV8APFG+LVBOOUBcXbZh
	 8Un3iK9FVhWdwMLdKQY7Ny7XSeXTswL0nWYHmymVK+as3KlppUFPgZeP953qSN/CI9
	 n5i9RzXRnzzjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C5FFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788445368.12980.4676167582665705903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e016945e720b795ee1e0309bb0950ec664cfa14f000c43a50384721884899427
Date: Mon, 04 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777884453
