Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B188F8F41
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA59C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665468653;
	bh=IRKMtJBXYMvD57Jt8qof4pg1AoVDtMiM/2stPlWGfDo=;
	h=To:Subject:From:Date:From;
	b=m852x+8tBTLA1FbXO0GMtrGXcIVIEP/d7P4xx3rrZaMvvgZRJuS3YG1FlIu+bb5IN
	 FV08yI3HWZM9siSb/JLYGrgWUCFWro7AtU7yL/Nco0J7Cb+sRDZ1+8SNJsUObKbjPp
	 NbitgKhHw51RV1tlBPzz2TAqapdCQAGcXnhKZT9OBNyiNyruC93u4vCGqS+bqeJ/dJ
	 LjlN2XRV/vYmBxO5k2pzsxW0tfauwUnKXBzhTkOvK45BEP5F2J/1B4I347bNIeaJZ3
	 oZR3kGLhlbszhN+iyEEtRh1fMFrsx1ZeDO/hxlA1omhhGtGgmWssrNiu+mIEkW/BSi
	 ZAY65SNKzlXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5179BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546865332.2221.1599301946990789647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8706222d987d634e2d3643bfe098ba3c60133525b4a007468f3cebe407d71cae
Date: Tue, 11 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665468653
