Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FE186337
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749065394; cv=none; b=YjGWiXkg83U6sawvNgp+XRB1sBV33DAtZVJqfOzz9QPCbj0DzRPdh1SoSYiUZgMmJOp18MiqAGYDjM7M6P5Xtlj2WdVKI3lnzyG53QGvnZgAp7+C1Qnn2q3bNDfC41axm5SqfinykGldcy/HYMMav6ta+PdBcyO+ta02UKcVN7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749065394; c=relaxed/simple;
	bh=ZGxy4/jLGNhps1yxBORaMiz4fi90ipr6uA5FaPK+y6Q=;
	h=To:Subject:From:Message-Id:Date; b=NwU8OvLV4ZXYioY9nZKjLyc5zbnn5fyWy+Xha2htsZu/0nA2lzEFvPOHguZ/ecXNgGKvC1AuUcw3d+/+24guvRFJ8hHaFUkP0B2Xb5Th2OuonOk67RCkaTpr83UzVxv+rbgqWa9czkGbLyKkT1hVKyo2mGZFWaf74RZ9nYTB+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZfVNFqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZfVNFqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749065393;
	bh=ZGxy4/jLGNhps1yxBORaMiz4fi90ipr6uA5FaPK+y6Q=;
	h=To:Subject:From:Date:From;
	b=IZfVNFqYzHtsJV6kPvLf1SlgRD0RFYsW9O9zY5o8mZ9u7k4Hw83a9JDd77HiFUBNs
	 HuqFyQVtqEk9JOmfud5s8XDYZkGMNDzXJycN/nex/LXQ/8o5rkEz7MNzhrdFjm7TDq
	 rpWmBs3rvy3vqlaMqjkjZE0aZsusx2TEtjUrRq99Pv9oU24Rf3V1n2m7NSzoQxbEI7
	 sMT3H90o4jDrhhtSIw1Cv4QfNR7gDJAxwyd2OMYTLWkU31MiY29SmtPsQmynK3nr5d
	 +valVLNJhA/pT8bsw8IvARfIpKOZwNRcXDmSEs+HtOGP8ML9k3Jt2hsQ2sJes837n4
	 RR3rkdCYMGDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC9C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906539358.27618.11557157195988710647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27bd450476ceb3f71cb13d55255affde367f02b7b08480a2153e3851090ae04
Date: Wed, 04 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749065393
