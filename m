Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7AA342CA5
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770584634; cv=none; b=XJfq1hOYZUSsK9PpLM/C3SPjGs2drVm/gZPIsUIyyxKuC5yWgNA/1yP9n0BaD+Y+duzrkD9M+kd+aSmQVpkXg6b/JlCztqbbn/VARcD36aPiFTSxF9zeSDvkjXgaupBz4LIZdevhL+FfWZQmbHelu50A0BWakWc72BQ4VRlqX+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770584634; c=relaxed/simple;
	bh=nBetoIawhkLnmu9bovcTalxMMrzSpPHl6K/O0Lesops=;
	h=To:Subject:From:Message-Id:Date; b=LzqeRcAQ/T1Jqz7vUfLV+J7qek5cmHVqcF6DnE92ykjF4xsKpus5BTqdgnPgqTr2qRS+frFRvO0h/pc/TTP02gEL0wfp7ec1//JxzZW26AGE6X/Hafgms/X1c4kiGLwxGjsySr/SN/2ff7hpImlFQP9UyE3YCaHGTJACNXu7pzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUXNwfMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUXNwfMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8799C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770584633;
	bh=nBetoIawhkLnmu9bovcTalxMMrzSpPHl6K/O0Lesops=;
	h=To:Subject:From:Date:From;
	b=QUXNwfMJxMZLJYsarqeZF0fu/IydmxGvyk2CUiDuP7t5Be/zcKskvz2s4o3d1HKDo
	 2d4u4HymhkqHFf4A3jiOJaGmYpjaQmq28RUhUgfD21Ex1+EgQERPF00KI4lBu6QZRe
	 jroXQEqgtAH1ji+jCmVv7VabAikWuIRqR++BOj/riHc/n9k6OGwg0XjnWzoQ6z0LfZ
	 /B3ZIOHk6UFEWbGY9X0vln4aNYHM0VSYlKOPD0rp/CzbS/jhYYRzj1gaNGLl9SqC6j
	 77JL5Yhq8G2H4WQ6TGiQZaybjvR14GCHo+fhYjE48hoLGkbg1v3oE/5s1+sHPLVWpG
	 InpIZ9tEFTwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94419EF06EA
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058463359.15812.10968170575156910630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980d24449f951a763816c923f6288de73abc0a8876695385708142a10ec8a626
Date: Sun, 08 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770584633
