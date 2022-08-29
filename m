Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D435CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75964C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661808652;
	bh=DReZ6AkUJVEFwh6bhZvO9JO12/svRMK1LeUtZ+GYNv8=;
	h=To:Subject:From:Date:From;
	b=Tuyaoo/ruKxN9VhQPGlYw4LX2La5/fTguduyP+iWW2akqQc3t0tY/tJOT/O5YsfzJ
	 0Z8KwS6rxTZ58nx//1BodCjUo7mt/iC9LwqLOj6copZ+tcHOT2I403Gwls54V1NlSg
	 B3uRCSmX7NPt1Tc3yFAP45b6CYG7TKf2GWRJ1u3m2Qcvxc9u91OdZMoXiXhKa9nWm6
	 yyjIvBIGQtaWfYC3waMhqSao0dE9kTMhN7AvpiRJ1qgyfj+Sj/grMEGHH1hRxoIt66
	 9KAE9kbiVhJe/uU3T++6uGHN4KYI1z25X0/RxidAyytbl9qjgXsCXj5AVSYOoV1WFe
	 2ol7TK9/0IE3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D90EECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180865236.3752.7956799530728792079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1719c7af5c795c961d1a5ee2f2a04fc178dbc2911070060979528c3f54ff6c
Date: Mon, 29 Aug 2022 21:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661808652
