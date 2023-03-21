Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560796FAD
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F234DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679387886;
	bh=C+qdj25LJ3Yka4BU0oA+8BgLcWhXQZRPUP+Mh11XumE=;
	h=To:Subject:From:Date:From;
	b=D2v8Ke9CP8OeCGEqrpu6HTP+ro6J+pfcL/16pj3iCCFb2DADq0ShPTkjbA9YrhXVC
	 j0KEiyTC/NNb1+WrIY3anL3MuHw0HzJAT2904d1X53Dwb72Lu/i+2IiYaymumvGdRK
	 QH3VkN3bdQQyP3Aqv25nM0U93hSyd/N5vV7paTX2zahWRXGcLha0j/dXYbUHpiK4Fl
	 8Z5Ny2rtUI/cpIVtzTQIZganbX9295SSM7VbzVyUUdAq29cQ3s8ZJFcflsHnlsJ5gi
	 Lnfn3JFmDlLF6OesmJlL/AZU/vZkk9gG4brEXE4+Jw12oRHE9ORnaP7Dk6t49PHhi6
	 aI4LBZ1BJPwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9A1C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938788581.1647.5344250175304193721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac48e649a8aedf2b286edeea6f37046506a0abb0135db8ffb06237bf59a443bd
Date: Tue, 21 Mar 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679387885
