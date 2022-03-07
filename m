Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C578638FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646692885;
	h=To:Subject:From:Message-Id:Date;
	bh=E21ydle+Rj1wVfOhAeejkteC29nBbZW6B8Ju9tdIMNs=;
	b=IkYKuhLGGaOOtno3ugb+7c9LKFiY3LDYikoeDvPwcEOJW2Sy7vgPs8Cyv76B6c+L
	URwLyaH0lv89/+kzzqOrKRD9el3TbLwhKxqlO3oS0KmWjsl7WskGOSx1BWpvybgex3B
	V0fkaevLGmpRJ3Q/XH35969pflqdhyYlgkyTSjmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646692885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E21ydle+Rj1wVfOhAeejkteC29nBbZW6B8Ju9tdIMNs=;
	b=BfcgiEIhH2ir5eJw0Ray+TkiO2e+SjPniqREWQqzhrFRx/wt0o9Hs958FxaMQZnQ
	EMom4SU5KX4dfJKw/VgsuCI7KVs+hjogC6vc2ApL41eHCFAoRp6eg0yoKh0o2t1cXlh
	sptA2fMVxPgnyQNlrC9uxMJ+3auOVn4KOQJTRiFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f668b6137-f17e0d5e-f62b-4e6e-8429-953396d782e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22b9fee6b85871d4017fadc191f7ff227cb9c24d26a61f80fa957568417dc37b
Date: Mon, 7 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646692884
