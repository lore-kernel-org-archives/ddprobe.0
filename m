Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4384229AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47E5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674310925;
	bh=ZKgOoFNnoNLqgjSxoS5rQTrV3F1nsC44TcIPmXJcJzo=;
	h=To:Subject:From:Date:From;
	b=F2xP85rucuzgUNaRSsXrhPn6LRR5KmYBh7Bef5o+kaeJOa+qyykmtLN0Dokf72Yq/
	 Fwd4Dc3yWouT3wbMpiqmZbjivYDrx5YdFzsQm8Mw5GetaDPm5aLsaJi8bqhdjC+M5k
	 uzxGgKGrfG4+5po+Iu6oI+OBvklUBHM3O92RFJnWePXhvH1gMrZ4qul1LP1/NsEk6C
	 XbOOjSgPxZowb/Mr2HEI9nWwKHFEDXo5NdeG2Atw1GkXrSKr16HtM+4/mr8Gm6/ZHy
	 snjU4AHUDKX3XMV3/+zen/1ucU2eTWvJ9H4RcKpHVF7Bb0qZJs4u/nD835esr8/4yK
	 20BD6UjbSIE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CF4C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431092576.27859.2412612313261676438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260d7010abc6b577da97d85972bcd99cf58e2c5db0fc8a894d16f1d70f8216b6
Date: Sat, 21 Jan 2023 14:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674310925
