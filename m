Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0924A23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683B0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668240654;
	bh=e4gmd8WeGvlxjEC8mmdLK8QwHS8M24uHnt05vY/Cm8A=;
	h=To:Subject:From:Date:From;
	b=N4A5uK0OghHtUTeJeM5rDeDvQePTjqlm3G+StFqZtjR/iyoofJipWC3/HNju342G+
	 1i4y3dpoAgDgQSSgryVJrA6dB2nHkJLZuNfOFyAqJLTQ2fOaUyHFwIiRiNT00e5N9V
	 QQR5JiUaCOWPvou5evADxDe59zNWa8aNP6gl9DvbDCSHUm501ltKQd+TQFoOsl0g4w
	 y28WawWiuNzv3NjnMis+G8kXWa0JDbW7w7K03KIfmDfHdv7O8plEx9wXkrnap5/0+8
	 rT3d03aovfLTJeAKMEyYNewnvugqsZ7q+IlDdRvJo0ZYBeLS5igU+aeSNNEe+DTtg4
	 TXgUO5afh6pog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DD6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824065433.10492.457799064938634226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5470bac85f0770ded57c5725a71f3c9b068976af35035b47c2d8bc5813cd8ef3
Date: Sat, 12 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668240654
