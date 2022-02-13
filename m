Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167337D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644778852;
	h=To:Subject:From:Message-Id:Date;
	bh=HzKd5rQxeGZl/oBzOUYRep13fzA31mzoAgcAUbyhoc0=;
	b=OS4aRsoELwA00WODnDbdFozEZr3sEqOoQ3FQR5fbAlPpho39MLy8CnGsKPLlIezk
	2uuWPu9iKGuVmez7S2UINzgUc4uZEidkKvpJdNA4Fgc/uWSCG9KlLSMN44d1CkNcn+R
	VZ/NhbDEUk4L4R39lvwjiwxBLKlHKzt6jgtRzSMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644778852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HzKd5rQxeGZl/oBzOUYRep13fzA31mzoAgcAUbyhoc0=;
	b=b2lF8u8B1vDa3m12FwtFHUams4PDAy+QmnLcGNW1wV8Mwf1xVOu3/com7RE4weY4
	E6JAhuAPb04dztZr2u7ge/jJl+Qam/se2Jeqyt3OyKSOswfkIapFvcSHCtPKbmiDUdJ
	HbgS3F/KGlIToG+Ybtg1RLqL6t0u44jVo+rrr9mM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4759040-5ffbda48-784b-415e-9fc3-b532685cd22d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 891c4718df621427d7bcb3ebc669431c8b44bc4c0bc3ce0593b686de6aebb0f6
Date: Sun, 13 Feb 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644778852
