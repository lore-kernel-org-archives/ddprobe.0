Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E78BC2C6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747493394; cv=none; b=TSE3k/JMGNwwl7dCQBqZlOSgOqlpY68DtaCln2Kni/EKONDQTz3JloKHV1/Lc62gIUUfLHDv+LXC17FVqAxNv8xKkLQj/8FpZG9BPzoLF1Iqc40nkjPPcqdo+eYXjbFeBd6jnuoPO0kZaVWe1BFRXxTpnABoG17MHY/GyIuaqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747493394; c=relaxed/simple;
	bh=8lf0FFMo1bOXlTn5tB4fysbECuxpQgKCkmTsmtKr3Ug=;
	h=To:Subject:From:Message-Id:Date; b=cmUeR3W0rug1VfIgD+8bPa63v3lStsP25sbuMGw+fzDa/51v2UtEmqREjJbWvkG1C+pj6yoSphfTHaDYN9IbKUyjGMQe1uEzlIVjJ0h1bt806wepituRemTQoigE5qofDT/RB2xUNMWkjRBWOPKdfJdWXz9vYs2G1ErRRfS2Eek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ4VVq9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ4VVq9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747493393;
	bh=8lf0FFMo1bOXlTn5tB4fysbECuxpQgKCkmTsmtKr3Ug=;
	h=To:Subject:From:Date:From;
	b=LZ4VVq9SWdStyHOVkMjMKihtwKfaUR36FXTSIZNYPLuS+s9KruSNX5LlF4oZoLX7r
	 El/COw3Ze2a8Ah5yKyJ9T5fS+A2Cv7p64UfYPZUW5hnh9GsUa2W4fn0verR0fbOu31
	 gCGuktujOPMNHrncrA6xgTjj2cEQWRAapOzgLHpJgaKWpPkYMA5Udfk/yXZ/0Gd7Hn
	 VnCzSbeagsZe3lF9yZYD2Z2AHt4ZujPz+h9oHFDhxjPZnmfbX15ILdVWLsuHTSC/PS
	 fSCRHS3Fty5Kuxo/5xweuwv1HGvQZvRKPeVfc3qxe1Sax4MDLpnKgrMmJeM79QEZlz
	 wPbabD48KZSzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CAC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749339357.7063.2098555675929673076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae503c6785abe6339b19f28a650fb4dfb4e44befaa71032443e8126e16016754
Date: Sat, 17 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747493393
