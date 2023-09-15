Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C961B279
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67D7C433C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694811308;
	bh=LFL/NnJ5N14mHhm+hyLKGt7SB+I2zoU36fQ5FMuwYlk=;
	h=To:Subject:From:Date:From;
	b=YsfZlgZdcnaAFPastA0huPJLS8nclKt0x3OwTB3mbKGAJ9cwir6JOknGOf0rmMVl0
	 N738yMoCHXPHu/HdVUdH8xVS6Ys/86tS7Rhk8KZGq3JLCcYz2XQXdqH+aU4fYVDH5l
	 Q+IZwltUub2lZdABbupoN1aV4TYg99JPrPBN+FYQUEpQBT3IMGejaUWI5D/eNgPzOz
	 n0UYw9iOM9/khbbj+csfP4Qu1JGZA7wm/w0rHtKfzgTHz2NCyK9+5xuBzoQdh/omXJ
	 lyCMnyMOE/OEevETy4/yRmqbvfBceR1VLzLL1Mbivl6IyGZKVnYHECqzompITuF6Ze
	 xnJh8AvagDRrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA81DCD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169481130868.8109.8806589792726301620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39ba44cebbff9b6e3f8c87ff26488f477243d3766723758ff44288c117cad77
Date: Fri, 15 Sep 2023 20:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694811308
