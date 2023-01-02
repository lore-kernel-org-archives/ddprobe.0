Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78782587
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810E4C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672656687;
	bh=/5FRWcIY3yVWPymTveYR5V/EaumMwmAKNn+tnL4h7EA=;
	h=To:Subject:From:Date:From;
	b=Q31ldLsIQjbWKihnp8EfICsjIj87ZJIirelm6Fl6MOsZ620mgrQ3xif3cjEKDXTHG
	 s/wco3XVZPFjpUvToKvi0dShQWPveD2GvygCodZbkUC9/6DyXPK3f2qRZcerLoFFj+
	 KH7JZa/kOsZLuvSZz8gMx4AtjDJYvVH8JwwNdL6LcH6t6zBTtTN6Rv3L9mFsoc84UC
	 VCWeg+zWSVfZPcTXAAxhxjoMFDeHRl6QhIUo+ipzrrVvfUsrBBef97D0orvG2cwS9r
	 c3FxeDW61yUjlmMXEIelKKR/xlAepmw/TM1KVPQWnHqdT5aHNhHTw48pVttDB0ijF9
	 pV3AVW4VC8eqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6622CC5479D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265668741.18171.16750825947570636162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60588446b7a30c3d469d3d60c9f2b077faf09347ae8ca8c8b8bcbc87ce4446b5
Date: Mon, 02 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672656687
