Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367151D7E57
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744378794; cv=none; b=V76o/rxkEsulF7IMIJP+tPziIkqTe6Zhytm8SG0iElqDOS0EhMcCDAtVpvECcvhmmv0fudyFZblqWR53l0z2wh0DrpnjkLxnHmEvc2P4UVK/bQ8R2/qoL7HQ868+vQjrzFoIQvr/Rju8svbb9+WLjsZ9wzPyXlS2CBEO/Cb0o7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744378794; c=relaxed/simple;
	bh=Qkg+auwLir2eI54C7xgL2p4SolcAa+AAUGSV3DCRgYM=;
	h=To:Subject:From:Message-Id:Date; b=FKEWEGxBV8PhOvXvn7lnrTBnioQehoy4c7P91J0NcTU5tFJSogrY2C6EZYgczpOY5Jby5+R4C2lvlnj/xwTfb7Mk78dxvN+5aAnoX/xxQcmh3K7OY67defZJ4KO/B8wmtWcw5CBHbj4ERtrQWj5DmnDrSHeBLNYsGGhJttMia5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Djp22bNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Djp22bNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCD2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744378793;
	bh=Qkg+auwLir2eI54C7xgL2p4SolcAa+AAUGSV3DCRgYM=;
	h=To:Subject:From:Date:From;
	b=Djp22bNn99KubBoQIVfqIpTqEcDH42SoORwcZhD6xgfj3qurVKmx/TK3ukRv06Joh
	 jc0pj6cxJKHlXTZ/biNdDfxK4fd1yUDe5Jbk45dFRYMEXtuthudH7EBOtwf/VO4Sfo
	 fuoPxTJoXqRzp8vquz7W/TTh7vGbq54Tbvw6OtrH6Mf/55Duq3MqUjwYCQDoW0vQh+
	 zC/vk/WT7QhIt/yA/9KXSRbvuemiRSkxJzLKGKd9hVKNStHNA1sSPg6PMSEvpLeC8y
	 MXx2gVC3lPEhj/PrwHuKLL4ut89gvHnlyH9MBfq0g+k0D4meSOrICfyk20L6+GZayQ
	 6S8qd2K1KXkQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A28C369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437879364.23331.5392896909855490409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db3e5ce209a0fdefa05344ecf26230d551fd2ec8e5fcb6c24c315a9a2bb8b88
Date: Fri, 11 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744378793
