Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F791FBF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B9EFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685510646;
	bh=Yq/xus+3TkAzefTWZkOqDbrFeD5X8oblJ1G1onDwmCY=;
	h=To:Subject:From:Date:From;
	b=V87f7KSCf7E/xD1vxtxhir6ZbQYjlNayHOCIdzeMbVeaAChjGQpEmqo8MU2paC1CI
	 Y7n6U+KauDI0ATP7u2uYX8etU488yfU7RNKN+ENN1tW0azQUVlK0rmu8IqrFFz11+5
	 gYNDq4ZSjYtIS18pmJCzlYGt3U8mMW0va2phXWxiRBZcDG6N1CdnnFn4gLzzC0hIJ/
	 RzcFl7ji3GwS1Y81rZQaTmsBAMEVsjq/Y9zcOHCbKZT8kJ0iu56tAvaxS70x1c09nE
	 DSg8fIEc/2VIwNutbi861jrs9mEmYIqTUkHx7vYWhHvELYC0dyaS09gdIg0meCKx+p
	 r8L+uDgod9vQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0F89C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551064591.8380.1079893685843292742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f9fb24fc1c42230202cd22eee26a55f226b058d49193ced545bd9e9a56d9ce
Date: Wed, 31 May 2023 05:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685510645
