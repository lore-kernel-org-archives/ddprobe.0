Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9216372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FB0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665819653;
	bh=yNpDTP3ncVg8TL9Op+178naDNsjwGW9+LgOnhfzajUI=;
	h=To:Subject:From:Date:From;
	b=WfOlty896bP0mEPZx9iKMN1x4YMR5kYgU4dHAqA3SQCuXR04IyddoiwBm2uQDZnq6
	 bDmXz4OT61CObabO3SdmFf38b/NUHKQPcudfb5ZdylEDb1lMMEAGIsynxEEyX31Xpz
	 DH1ho2D6gw1fV5aK/qgOqLjdi3i1NccvCUp+n2aVlgAQ+ls6nNlaHnpYGSc05YM54W
	 v4u1pC6l6pxlChtV/WjW6+p2k6/Y6m/H8s00nw6llQXPFzOzbCWVrMwUhzqY17SOjM
	 WGvhFw389T5Xgw8IOUHQb1mD05AqibGxwu20SUygE4+6ZFaOBJsVnVl/RIYN1h5DQl
	 hmvi40b5L40Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C47CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581965335.31967.945112961971949130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eccc45d94821f661a798dc9435888c8f026aa7bff145f4648fee449ef70928c2
Date: Sat, 15 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665819653
