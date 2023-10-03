Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B725364
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 02:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC67BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696300568;
	bh=oXseqqB/GZInOet0oxdka7KlcGLnr4mV1SstGP/NtZE=;
	h=To:Subject:From:Date:From;
	b=tKUA6MblegV0tJgakKpa/GNbqU4Jf+O3UrTkOfZxGb9NCuSuvq/RTWDQNs83NZIRJ
	 roQVWPzjU9mIXYbSNb1AyH2Hqi3MFAKkc3IjR1iMfChh9ssOYoJ24ind4QwX0juOfv
	 ToTZ8LhlglnbmFA4TkjOg57cdggLGgIGuMIJGKl8qzY8XuAevnmbubpeTX6gnmQFel
	 HdfrYwyPuZUuqk6B2WPB3EVTaPpFpxkq9MNFMFH0t1QNfRvkyKwrKUvCmMaLN3S0l3
	 +Hvy2iSAHuBt3Y/UgCNQDdnq8EFewUDUPZrY0dPHCcI8DUpqA9jIIQJM9UPD4EEVkB
	 GgjVbC9cNKYjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5256E776E9
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169630056872.15422.1754710471934007997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d8e994d28cfd02ca505b0ead2cb79a18eb7e5a7f4d2fe469f4b9f3675d9bc1
Date: Tue, 03 Oct 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696300568
