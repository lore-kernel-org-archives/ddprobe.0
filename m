Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57A200C0
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC+YVFej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C00C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702910896;
	bh=cPRJXA63ui0Rzd6/PiRyDEvRIB3qPOyan8cWD9iB0VE=;
	h=To:Subject:From:Date:From;
	b=bC+YVFejnWa/uF5Vvy+ZfmDW8qH8Kf3Ex1aevTTW5aRNSVpy0urpBqkml9K1/c4KT
	 BEhl8+HASZ+Ae1oXo0jR6TQQht0yrUttNZ9f/N7oqd2AqDy4tMe4jYbp81y/3/mVfl
	 J+5EgKgNw9UV1kFf2EkM6ABIeEUUaXt6PQWiQCQH2O8KRcuFxqmsxzG4BoJEeZxqxr
	 RW3UdUzefgmLbWOFOi7YBd0KuVEtoFQqYByPndYxbeOiU3k7yIBj+1ZwsvQuFYLDj+
	 J5rft+/z/lXxbTwLxb2zpLu1FVLoLgXkwgilv2v7MbRpQQivTlvu4VwENWYBV3SFmI
	 7ES3FQkI5mR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E90C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170291089642.20329.1318780663921800950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6c7ee9de248d1e14a056eb889efff20bdfc1e71468f68efa8eec373d925f12
Date: Mon, 18 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702910896
