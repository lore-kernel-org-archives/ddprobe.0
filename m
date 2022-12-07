Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC19138C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742C6C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670406654;
	bh=5x0HvsufEVYkwW7tQghHXr1hPN9mEw4wvmO2fBZVlko=;
	h=To:Subject:From:Date:From;
	b=Jw75bkq0RhEpLyWoq94xdhg3w0Z30NgidefAOVwU3jHmEjoLEgYyN7I/cMdKer1UC
	 o5E6Fn9+zDzq1YJvuT28N0I75J+aixrIzQb8Hnqn+hrG/UpO0YdSWOvDDh/d+wNe6O
	 +shP80uwG2uD/fazJryyEXcr/a2+5lSZd4QQ6ghgRMGh3B31dZAonqP0GO8qTQtUVh
	 whfDCHQMVa7JFLNW/UatoTFoqUuKiK7hJavn5u/quErbdcFIbq+DRg/S5wI3MAPcG0
	 hDb8uK7WPRpDHf/nTUeFz8FFWR85TaN4IBR6xUKwm7CsERwsfBkUnzq09sV/hbfY+J
	 foMlfl+GXnZ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59117C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040665435.15102.6390125073843126809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949a5cabde1471510c3659df20e478e7cc88944c991db5020fb166cf928c0600
Date: Wed, 07 Dec 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670406654
