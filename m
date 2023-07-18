Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8CDC2E4
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 11:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA20C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 11:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689678669;
	bh=hWv9fTSKXzGOkii4wTLL8VnBrepePRJi/98Snhfc+Zg=;
	h=To:Subject:From:Date:From;
	b=bIN4bE5iSk4aEeikOwfaz3BamiCcdrI4155L9y563IHMT7Q4XurexMT0qC6yWnbaQ
	 Bx5yYQ2TuFxa0OLWCaZKFImzlyyEwEgNN+Gyu4WAAqTqkdNdYSqxXnpYPZyunHx9ZD
	 TCjpQr0JLO2ahEdE8Jc7tJdnxAWkTpO63pPu+eE30qUewInIV5+emp2BEc8bXn/c99
	 4n7dpYwx6GsQZOzNO4QbGVrsR4vrHeEeNfpJNj6h8Ozu1CtXIrlRC6sj9pyDCYvV2q
	 gWIPvmhL8QIKPQITv8B84arQ8G/qwFASsPyzceA3qAbTjKwGVNh7pwtJmWrthQb/XV
	 OY9VtxHDxdChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEA7EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 11:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168967866883.27869.7096014544496527982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e95307ee7eebbb95e46585c6d991f7dfe1337ab7600f4c5ae403a90b2e038b0
Date: Tue, 18 Jul 2023 11:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689678668
