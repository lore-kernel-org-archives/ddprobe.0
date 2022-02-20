Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E975EBF
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645381885;
	h=To:Subject:From:Message-Id:Date;
	bh=gZOJC3+4pudEpWc26irAZ8n+FTK8Vq8eyyqigzT95s0=;
	b=lM15GER7m19g8djoMBqfq4YDeCUKlXfaBL3/oe7VXLP1GGVbqKNsuF3cZ3waZ09K
	HP5psG2kdSnOZE9mGl0I+SsgDtNMUql+H33zlrMHV9WcoThco/JN0FnOItZfzz/hb8k
	LjZk9xXDc90pk2NxPoKJYiNLTs/C4Bo3Axc6kz+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645381885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gZOJC3+4pudEpWc26irAZ8n+FTK8Vq8eyyqigzT95s0=;
	b=HPqNiEsSG344arc9oR7rWrJ+TpGMO+K6VoZt2LjlHdwmE9PgSX48thFA/eg4JieS
	nqpXoHMVDKDm77HWiDlGQFwNM2U/UBLPzhHh+LquZYkx6iTw+QNbSgE+BtGJVhAfAX2
	y0BQvSjerJGGAD6yQ41DoKl9WCHw0QqoTj0lnprg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18671b6a-80676d3c-0ab9-420a-bd0c-f734f504925c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d27f69320d5ffdeaa75d4e057b1379a094edb9084a134f2f5b53e0f6c1190b04
Date: Sun, 20 Feb 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645381884
