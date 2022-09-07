Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C8D5CA2
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82BC7C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662579053;
	bh=VA5/UTkEUWxsVdRRlZ/JxX9dQjgY71xJXw3JPmiCCAQ=;
	h=To:Subject:From:Date:From;
	b=FcAPgWx+8/AwyFOK2ToM2QJwo0WBJIedyHYGjt3w5LK/NeO3I1XGdQTFbA4zgBiLI
	 ye7BI/BHJaftQ0mwV61e32T1dtqnSG7PdxZEL7aSqZKXir6oAV3CMIm5WKdj+vYnWc
	 jLK5Pp8BmN4GWbE+6UKpQ8dBvKha9krDOSbYmm31HpAYOjjoMUlNj7Z8GWK+9bIxBW
	 dafj64Nn4MSe7r1T/LRaARAenN6C+Je1BxKjLVtO6qNGQ67XwO626/6jhTps0X1lmE
	 hU7HE/ICt7CPxLMu4o3mrGmdca+XQWdyOOrcy2HQgEIQ103MNV4XxM3pMS/BsVy8b1
	 vrKHV97o7tz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CD9C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257905341.25836.9133176041560267232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec0467095f7ba8aa25a0c822d8a73c13e5299f6237ca42c3c60aa0b7b9598e2
Date: Wed, 07 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662579053
