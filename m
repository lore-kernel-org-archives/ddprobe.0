Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4D188A0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727738754; cv=none; b=O+yrJm+kY7b5WR4SlYT3o4m0GN2itCMxLiEvV9OhlMh81d043ApyKvW6Eg0lUEAZwWmRLTNsoSpbCpuq1Tnc0JgRWtIxro50AG+sRh7JVMuHHQQ+hivB1vE/hVRohioKn7d+zlKEuU583KvSr0+EtkDQUkGnSgpMzrDW6Z5nTdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727738754; c=relaxed/simple;
	bh=Msm3aOCorT53rGsZhAP7CZMQ9XZDfppACmDWO3LQEXc=;
	h=To:Subject:From:Message-Id:Date; b=GjaQgxreD9MSC01YWrySxMZV5DDkGUIPw++qpg61oeZ0ZVLvVQ7sMBT0aipU+53BeGSValmOd/YGl3jCeFi0Ue/Oa/ybO9KilD8bqGbO2XUnQCEpifdxqj/9VZyG1Yd8GG4qPbE2Lp3VMunfoBFfL6Lo2wNh+iFK/XxAZ3H8G3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXaYcFkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXaYcFkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4481C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727738753;
	bh=Msm3aOCorT53rGsZhAP7CZMQ9XZDfppACmDWO3LQEXc=;
	h=To:Subject:From:Date:From;
	b=ZXaYcFkrG9KomVt0DCyohfPWGe8aMLP3M0IryFIhyynpWmzQSpgfPguF9d5qKj5bs
	 Q0soAFelcW2CzGEB7rQfX6ndScsKGiwOkLRbMs45qAcSn+PA/bYQ8jlVWAxpjwgE5e
	 GD/zBs8Jkl2nAGmzrRIhcJyxNgxwvy9Ok0wq8YITP9bbDjTIHugMZrv2SnLPWVRmeG
	 eEI+nS4PQVBOqojdWVIa2p0cJgXvKwWRqrMHOhMbkU/CaJj3nHYd/WuS4I92HAFMw1
	 E5wghkFsVAEJH9dokeJ6sLJErGOXUg76NEoQ2b1bJlNgzeK4X/5+YWZvoQ5qNwmuEA
	 H2UUHlUAM9H4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6DCEB2CD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773875358.11277.5769825956621104686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d804e01556725a883878fd7043a96d9984789904954aafa29b72897e34b68e
Date: Mon, 30 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727738753
