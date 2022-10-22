Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7C47B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B384C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666437053;
	bh=oyX4JhaKrpzaOZA0FI1HIVmPtuxiAWnMcPnnzKiXwM4=;
	h=To:Subject:From:Date:From;
	b=FHkFGy5gseAquSXqADICnOk2Dj5X+1VB0oU/OAV7zHlsE/C5V98gGLSUYltkD+t2k
	 R5SihgyjGG2IIKjpyv8Dq8bguEUVMIoI8euLsX1G27i2bAzzLDC59+AWrOa33sC3qB
	 /xQCkboDlLtkOdECtNm4lBpVIZqFWef3JBlR1eu3o2Re/58ehFlK4cPDsOa0LOHM/f
	 Rxecbzct9lYRoHoiVNPR6z/oi9M67ucyqdjWz7NQAjG3LQCjd/5Ho8UUxgx133HY/T
	 oxBhvHbMFk8zEqbmDJ54BMDey4e/y5/e/mLYjkC0Ro5SCreBpB1UEMDhhclORog0At
	 HxUiEiImkChSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF20C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643705331.11382.6671144100386668879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c761033a22a5c2cddb6ccf2ed26c3f902a93fd89d0ab29643c218622fa15ef5
Date: Sat, 22 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666437053
