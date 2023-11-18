Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F086139
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAJ/fDBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAC5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700306296;
	bh=0eIPAVmb++uf9GfY4Uf2j26gyrUW+I/7FbcetVtyygU=;
	h=To:Subject:From:Date:From;
	b=ZAJ/fDBvV0Nb1PcZkVqVxxfSKQNKUqtN0sujGFiN7Tl/KU2hn4Qw85UGvVO3BiJkL
	 UoRRJOu0byxYxQT9KH6NIJAcGTe5kaYeA4WFZqYzYmDYZtpa4TgY9jq8w74VQS9Fbk
	 CRVWC4LfwM+qSLQfG65Uq6YEjd9Pk9Uo7+H5CwrST+kMpxPgzo/8qGSzuzMALYchFM
	 2BT0w49sVPMey4412OzxRObnyzXXaNM/bbFa6y44CLsCH1HmBMrpFULhGoEjc7sZuh
	 fhzy0n707nSiOtYpslOcaJDQUDgArr6RdTP1KIs2sKXkc1V6fiJTolHGp4VvM5EY4w
	 5mqXrLVvVs0ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F113C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170030629637.10271.10708924092162379231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffef5b215bc6787f6c0cdc2f1612356b68ace724b1b13d801be19686c54e831
Date: Sat, 18 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700306296
