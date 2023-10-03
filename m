Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EB13B797
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 17:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4889C433C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696355768;
	bh=tCA3Ip6+d2DopnJQkRNsSphHWxvM984iKg4kyWUmX48=;
	h=To:Subject:From:Date:From;
	b=WZh5eV6yjocVInB8K0yE+5+FQGxra2ZJ8aiJ8fefMJfnuqAd7chcCUzENCpF7t69J
	 cdZGk2rlmc0evDygHNX7gceVSQ4M0hRhfJyWPMxvdOfEMNroUvCO6AhQKJQKYsLsei
	 0i91Xl4q+qRzo85yI/Gr7aZ/8+de3/pH6cjw/yJT4ip+bVBdk8hoAFWEu8srTdlypd
	 ZQblwo39Hnp0IA2GVulAZIa9p+o+RM4KGZvvYsaZWynfLAVx6WJ6ZjiNdGRcHQg8zY
	 I6oTnxlElkE/WjpvoNa6Z0vaGV4b0Xdck1GwoDKflbTCzVau6/vqH5eUXgL0HLHXNs
	 u1fsf80t+XacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9687E7542B
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 17:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169635576867.26550.6307914683065081119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63371d1a385e5f6517929cf7f8c42db08b42f471c23c913a256940fb1bea76de
Date: Tue, 03 Oct 2023 17:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696355768
