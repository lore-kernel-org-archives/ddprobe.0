Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A501378
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D532BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687570988;
	bh=8lfggENnb3B536M125w4XiO5QTDXJD9JEi3hlDAMVDg=;
	h=To:Subject:From:Date:From;
	b=QdpR7VYz31z83sxQTMBW+XhnUOzYZsKOpAshw6K6hE5tCA772Jxs386nzJDxZ2kRI
	 /k4HCd0U7CwNkUCTAEfnvnI9qwCtmsbxkILwGVRYCq/o7oe8XUTxZwQpM7HBmRD21k
	 Zhjwzbn9dZFb/DDqRCp+fiHmqFTvFdKh2b4bK+NN0B3bjIXjjzu3d25r3tz0S1je2e
	 RO+rUftJWOeiM5nlKnoD5ANGJEHRCyLoEsYdyFqb++NpPEMt3YijYvEoz/WiYc1mzq
	 8AkcbcD6tfmk+VcnBqcjahSiyPmqX4mJq3kwScwWRyu0zwjTa6oZNZ+xxi23hqoV7J
	 oGXFDl6VA0+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AF5EB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168757098872.28663.16533274549370280696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6a400ad58e759129f37b466aba6ee57b7d081a0958f3cdbc6cf70be7c0be7f
Date: Sat, 24 Jun 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687570988
