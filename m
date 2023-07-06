Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AD48C18
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF1CC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688644628;
	bh=+PboINsyW10mJS8d04+f/PH6kfchxo+SLrB2geyBKlo=;
	h=To:Subject:From:Date:From;
	b=gdfotXPZ5Vbm9Emv/F1i6fWNIARWnPVZ1jiVouNyVP02fjMnYAp/dQPlH5ad/kkfZ
	 ddgTTGdKiB/2kZ2fZECKXnrcZ9YzsmxL9oMm4iwSZ0JMUBQ4wCDrz2oSRaXu1DSNFw
	 FF0mQlQUc1irUqevkFDuxenKR+qAeOMDKOyTaM+mkYGPLBxDifnM4iCE5eR96XOuek
	 swHGXAPV5tU4rzB1v9HJK0c6LgAUOwdbw3t696cGRMHy8MEY94c27mQCTJzU0kTBNK
	 qDW4Ct7g9yzEOdiGkgiNe0leDkhnV5MI3ud7t4MlTM52JvxMf9f1AJZUhDDwnxD9Ts
	 uixGMOY0lbQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DACEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864462868.4887.10371281667822933350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3da208ed7bbff1acc175575e850ff4e69551f34373ed75ae90c101b1afd301f
Date: Thu, 06 Jul 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688644628
