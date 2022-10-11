Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FF2CA2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DE6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665447053;
	bh=thfL8h6oK5VYNXfkA7WItBOXCEqUbya8O5k2b+/IqlQ=;
	h=To:Subject:From:Date:From;
	b=L84tT5zC7S6yuJl7Wd08b7FiLG1Am6echLXyThKmaFRqLOaIWo52D5tpQ2Aqv5Hpf
	 5wzdJK+xJJEvGdHfE6EWvpTY8NYKj2B0nJ2Vz7b4McGnDc//G/FEU/T2dzjtEsA50T
	 WbkxKrSj0mfjP/M6j8OcEdqJi5pdJYOALEus/BfUc1qvRgUuMFCmTewxYfx9YvWotc
	 ioeCnqhitq5KksF4ZeNCJbhMljqhHX0OAYPE4vyi/dkRSU3F4i8TEnP207slI+6Opj
	 ZQ+x5DQgxRW4grSW/dUveZ1MAHTBwQAeKdmATzs4/jCfgGwLqGsxzQ+PHKIWlgExkM
	 Iv6j3FNfBRskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5392DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544705333.29694.10252904676963286847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e34fa911403cbbc6322d64741e076299ed5a693f21da81ff3bb6dd4f4c727a9
Date: Tue, 11 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665447053
