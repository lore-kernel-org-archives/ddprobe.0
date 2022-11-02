Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7BB27708
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77575C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667422854;
	bh=dxBlqWNMo+ltBQoc10f8fJcbrNKm9lMzZkKhCXjbF6g=;
	h=To:Subject:From:Date:From;
	b=HuesX6d1wF/Mxkqf6+o1ejOhKOD1fAnE8rO50OTcfAYaNC+g6tc23+6NlLyivjff3
	 T70GD6KDlrs3QdFNjfxcCob+E5oGbsfbhls4ARbqQOpoi15WtfOmh++wsDiI2KtKv/
	 3nZlkhccxn9SG5cmLoeCvl4pKMPfkqgwgIiBI0OmLA8m/OV0QWnXjFQVOUqFxy0BDP
	 VYTnaFsyf44c9fXBxvFpDuePaFAOJfSnHAJl6iye+nHWh65F0fUbDfLMK2JVuGSiZg
	 YrASGgceCogNGRSpbyrDBwJKAd29YpluTahvF6eghYH3XmZV8EXy+z2On9mkWz7Jm7
	 CmAHM2ny7QGBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFEAC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742285436.26670.13392363856786084967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492b6fd273592b68256e76a21393e8fa9a9ecad89ffaa888aff3cf72fd524818
Date: Wed, 02 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667422854
