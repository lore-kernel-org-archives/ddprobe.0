Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722A4746B
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D023C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677513366;
	bh=dowU1vIW8xrbWVbA0d8VO1e2FS1frNmQjx4bUy4kdpY=;
	h=To:Subject:From:Date:From;
	b=t/q8gSnfcXe4z2vugA7j+8A/VgaqDsYzEEx4ZiNhlmQqkV/23FiEz/aq9HMZg2ATb
	 rmsTW0uA8SoQ5vbN42/HQdNDpQlXgWDrOocpwi2tOBpfBtwAr7SLmQo0WHIn980ejg
	 XzXL+p8CzII/amLW+/751kruQphLJ1L+4P4/2IyWbmNtPiaxNoURhhNOSgLlZqfKIX
	 Q1vplevDmSJTlUI8ilAAQ/TictJ/t3wx/fKimDfm+GzU9lxpaz7c5N2RmtqTD49+bA
	 sVqlt0I5eQkvP/r13OwlXdL2Y4qw5n4m3hsJ/wTOIYjmBYe4AcqDasdioEICk/wGZW
	 pqV2f5dxaLdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6DAAC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167751336593.9446.12310327581892865773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb5dc5855baaa02e4b6046c159d4dbfc1a5dffb23a64580a50d9bf9ef2b2232
Date: Mon, 27 Feb 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677513365
