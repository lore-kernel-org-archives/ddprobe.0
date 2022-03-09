Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A912F2D
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646857885;
	h=To:Subject:From:Message-Id:Date;
	bh=5fQ/8J3MpxFVucrxUlgfZmTMdeZbKStSVetBj+SMAaQ=;
	b=bUD+25xXLqiMWuM2sl1+NYrinurHGsOA1HWrKVDQ+XOfJFyIN/sGons3pPyHITdy
	2wpoezIlrbhcG+TANwvn1vcE6jm6zRCfDYqabDFLy2FEWCd9/b1ZqBKg6BQR1v3IdaB
	IywjlQhqEk57zCHWUhYiU8R9Ae2sVNaM5ErZjnwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646857885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5fQ/8J3MpxFVucrxUlgfZmTMdeZbKStSVetBj+SMAaQ=;
	b=kF0pQKjQ3IZeQ74cJEIO9OoBlOKFqbB7yUnDXRNhnXgyrTuWx8FAC9jF4cE871LP
	F7BVLwOfl3JMvf4rhJz0Qbd/mDNoQs7mtq+LjO+9S/oF3xFzZafDWsZMwx7Fn8R8zy3
	301VfP3FCSWiDM7u+pI6cXMSj+zIZT1ksqgTTTso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f706114aa-6e68da1f-a2eb-4444-93e7-3aea6108fd65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0688a7b629bb13ce306d38752f1449b941e8d3253c99730aa1a8af6d218d8c32
Date: Wed, 9 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646857884
