Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9F37B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645902384;
	h=To:Subject:From:Message-Id:Date;
	bh=kDpkxW41QBjsiDUeGWnQeIzN61iqBhT1wMpnqDFXXGY=;
	b=jIUwmNotwChNEg7IAFQzH+Jr1p1DQfV7t/rIxVBQEwGV9BSY3MvQK7NkBB+kIzVp
	PzXCY6iJXGqfFfAKihypKQs5POpvIa0PA+JQzN7WvqAIlvTl4MyEfaF/ntVSGCsJp9R
	V9InQj1BCzlJgLsnzfK9PfKIClOBMN87QRGPijLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645902384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDpkxW41QBjsiDUeGWnQeIzN61iqBhT1wMpnqDFXXGY=;
	b=SN2u+fbKaubMnazATFIWkTjGlxbSnsCPekHkWooctCsVdZ4+C/26MSGDszRUygdu
	GYaCET9500eyGCVhcZ/Zgxn7rN2lOEm/W7BWnzZjfwlYltrxZK5peBI1V/U9MDhDQEN
	jNleS8EYmP4Q4T9/oukX0oPMAlUF6o/M1U8v3XVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f376d4e85-7a4b641c-30af-4652-8de6-d5b1b405106d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 956335e444cb71b09483a5fe4b204400ebf6d88929ded0b65dc7c7886fe03b25
Date: Sat, 26 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645902384
