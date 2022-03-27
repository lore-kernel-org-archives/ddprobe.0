Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A70D15A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 03:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648350718;
	h=To:Subject:From:Message-Id:Date;
	bh=kuMHruw3XSbmYVE60l0BSX4PMuYGcXnCyHMDGs2gwbM=;
	b=NANkG/mC8KgrTfZK7lvuJm2/9dZ8Wxho8a0LGFcwI0HdlcbeJqc+b4yINZFmdqG7
	4iLoDSG9+TLNVpMMXgnw/3IqkvSEqzAtK9uMNU2y6kDYCKQOJ9lRVSCojKIyuwSDvfx
	Q/rpdaWjXk5J/6tkcmabBWcxfKOeV1aPmAKwUsI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648350718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kuMHruw3XSbmYVE60l0BSX4PMuYGcXnCyHMDGs2gwbM=;
	b=YTPqSlS5d+LwBevT2xGnz1P0DznSBCm1BfVHaGMyGvetvC3cbbC7dn7RwxC6MWiq
	OM+SF8PiFx/vp455BK87YS+Wjod25icU70RPPMrnvLf3y2aXCcK2Ws5vn+Cl2piQn//
	0AbtoGIReMM9xkG+RYgL9tRdVoGueuGEF4A9Ew7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc95be96c-65c3f501-137a-4a21-b717-6f7f914b7d29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2cede8093c669557815cdafa6799f6c3e9cd5833b236eb34d6a0da1046c215
Date: Sun, 27 Mar 2022 03:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648350718
