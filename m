Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB71265CC8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744209594; cv=none; b=RJq11dcGI+DQVW4D+B2vOrvq1Er1/Eae0O6gV8a+fdMSWAWBHQCjP4TIfywk5vxj5TFD0lwIa11k7f9C4lY6DWeZM9b9ISG/QJInD176SjpiItRZ1YyrBjCJ7Ed8p1shr+lqHeAlGASKdGQExNeL5Q7DFP24/WTFG8HRhVcoj44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744209594; c=relaxed/simple;
	bh=h+lMb6AK+CjfAdW0XbwDUOuqwpx4eO39VNXau3D4teU=;
	h=To:Subject:From:Message-Id:Date; b=p9KTUuYCK1PI5DPTZQh8KehlHmNOcj6cL+uPIyS/9cPtuX5nHfmYmR7Dh1gkiEtbjOhMIX4600+1JIUiPgTZcXXUGHi0pM0en4mPlBb/e4iAZzRUwozL8ktppBkIISDILD6LydWQlDCWMKdsLuQdoH12BqvYYQVOkFWw6+uAM2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA2PM9Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA2PM9Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9932C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744209593;
	bh=h+lMb6AK+CjfAdW0XbwDUOuqwpx4eO39VNXau3D4teU=;
	h=To:Subject:From:Date:From;
	b=kA2PM9Bn111cn4WCrJ9T/7VLpg4WiNYQBrzIYNEBK99NkyN6IyjMSfg12r02UZT8g
	 vqFmAczjJQjDmmdhwu3fKtMzVecMx+Cm/EQUJnTtA6riS9L+y4QfgAxyY+7JLsbNhT
	 I8vZj2qP4N6cA5H1dLTKZarqmHKNRn6MSDX7fvcFRjH9wVYTy/n/TxtuNzTaX0hFUY
	 huut9hDEXog0UqLdiff5cE2q5ljr6dNOdDWbKMxmNJTMmZ6MZI4I93NW4IsCRSeTpd
	 Wgb0OvQvN0yUL9CbXWeYWVi7i42ngvaTxJzmc9krL3jpLkg9+9H8HgJQ466WoC9/Df
	 LjqICSBZ4n/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C8BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420959361.29294.9324817695209988486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a354d6d9d4a06344ed845dd906ff625dfd2ccff3f23941dca399c46793f8cf40
Date: Wed, 09 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744209593
