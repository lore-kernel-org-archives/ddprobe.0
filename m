Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEE42562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 15:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655739179;
	h=To:Subject:From:Message-Id:Date;
	bh=rsxtd/NmjyeCNnuezhfSBmlCzPNpf4Mk+MV4BVpvZ60=;
	b=cV1IVokNZ1AAIhRfrlkmvDhLDUJtNIioRetBzM83Q0wIyG+kLXJ7VC4Gg3kFc+L8
	IjtqKTds32540V/HAuQFEiUIS2m686eXq5D65IrgQHmPq0JKVjaMSPY3Ef46e8oxfma
	8mmnVJZit6vTI5PwUd0YWcsfKWxe4F44hk8XRk9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655739179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rsxtd/NmjyeCNnuezhfSBmlCzPNpf4Mk+MV4BVpvZ60=;
	b=OBuGKUqlM2wMS+2a/gvDhhOdxrE68PPXgC88x0oE3LF1NzRYcIdSjwjhUPW/5X+c
	JWB9JawN4+vYOVOlV0C+T39FnG0r5C10fBF4YnZnmDggyTvZnrJgTOsJH+hxCMes3qQ
	5bLK2uvvQXm8JQTSWs+Lplkn/fSYEqsidNnZyMxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181bee11c-cb489742-bc4b-4e6c-a879-d67744144cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b32e66c9dd73b5c22fc2353a0cb88e999d4d05da12be7f83bfd6b61e434ac266
Date: Mon, 20 Jun 2022 15:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655739179
