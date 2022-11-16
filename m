Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86775CBE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6789CC433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668606654;
	bh=wtIU4FpvT9wwRVc2jYRjJiNDuD9GxGrqQJFnX3rTqKY=;
	h=To:Subject:From:Date:From;
	b=S6ozBD9IF0GNPNkl+JkXUD4Kh2bsAP2PnVQ58A9SpH7uIbMe5/ENB6mrj/xvQTnWl
	 izgKteNT4//BtUpUS65P1zxhitTpDHnvFqEkwMJW5DDNmuyCrmSB2wwpBgqYXhGbQ/
	 UbLAr2XgeE2Vld9yTgtMf0FVrTnXSWUO47l7SdN583HhMnqcOwPUSuS8MrwGlhPEHQ
	 L7Lrzif/CiD7wpY7EOsHBXef2a7oef1H59sQ43iD2a7NeXf7nXe0Nsvi/pp4e1oGrD
	 IPnhOOOyzzI9CG5pPemq8kVrKHzcQmuvPjBzPdYAUNkSr82evOYonJf25gHxZaeqoS
	 jm1l1FiRhCYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51698C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860665432.21242.4793622652256430820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decd360f0a982c51045dbc9e1d2d02a495e49bf75a2ec68d2b2df57c70c9c6da
Date: Wed, 16 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668606654
