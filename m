Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9BC7476
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E236CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685367125;
	bh=7YkLSAiAhIfoDyA4RTbcTQOwSV001B9HF8blwCFn9m4=;
	h=To:Subject:From:Date:From;
	b=idOmfjkZs+jf+8UtZ+do+dOukCn8Zs9RNwBp9QWpq2mo4DUWQ8xWtr6CYDnMSwiog
	 N8DlcV9oWQ9kiwLbH9Qf9obmm6PpmsYV+jL8rt/oBZuFwi94Oy8dOZFxOowLDLJC+B
	 srqvJrdjy/KWrRYC/rwOdDyI2eyPFllIJlSB3z6Fk5js3UxcxSKGz89KDFyoVus7nt
	 s3BTc8pXZKLWfB/OVN6DB1ey8fI9lEJLNWEqkJzgpfME/mpYkrsdhBJBOH5svX0BfO
	 2HaTXwhA0DhQuuIUaeZlHOFKFAdxRyiLSx+UPQo7e7o1RDd6rFGIrz4LwlV5S/fL/b
	 2HMM+W5Lgd4OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C13C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 13:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168536712580.26510.13855856155800163886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef5066ddbafa650d5491d3ef27adefaffa18f077683bc95a3b9c59f2eb12607
Date: Mon, 29 May 2023 13:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685367125
