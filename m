Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03B97A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 11:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650110098;
	h=To:Subject:From:Message-Id:Date;
	bh=q2fK9/8Lz56YL5SJM99ARDP60ntwqq/JMRl9PaIETgo=;
	b=fOBBmZu+MWFBKlUnGGUVjfrz49+PDX8P2vhkj58IZzEMPApcGsDydiRfj0V91JPF
	3R7GpNDy4QOnvnxAjxpd0M3PB2BDQqUV7sT3gC8txntnjZfCF6dO9LFgeftvTRQQ8C0
	9VEa5vcFVPHDHzjyBkU1nzHca8VzJ5kOonBbLmBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650110098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2fK9/8Lz56YL5SJM99ARDP60ntwqq/JMRl9PaIETgo=;
	b=MqkCGxERmAwNrKLyLUlPxERHWSGjD5tcF814UANEHpQ9LE3YnBkXhmIcRd5VBMVd
	ma8MeVqK8uhwfTcg5d/3j/yOmsSUpfbUzhpK/jESbOukK0ege+8aRb7r4ClQunCcblI
	jVbZn/7qsDG4hJFF4IHHbE2mYaf2lHbjYntvk38M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803239eb5c-cd4b2f58-2dfb-48c7-9b91-17614dcd6721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a30a9b08a60aea2aa2182b5026908d73239cd6afdea0de69ab818b29e08ddd0e
Date: Sat, 16 Apr 2022 11:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650110098
