Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B5728DB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722107754; cv=none; b=KAP6e2ANatBcliqFt5K6ihrR9VMCqzZEXVjKaetxewkuLhtFxeXQ0svOX+seaLU1YsgXTC95XffPf/U+3kHfdXIwQJN0+58GX8vlhMDApSp0YISsQlz0W3J9ESEuyHU/VLNZSoziLKD4QdMnjxB1dmcR5ZfCYlvYjviOpsqKcxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722107754; c=relaxed/simple;
	bh=1YPkJS1L08vGUUBNIW10tPHIEK0qOZEOhjWFcFEIuik=;
	h=To:Subject:From:Message-Id:Date; b=CFyTv6/JdR3OrEm1v0TKoSl65CWEKUgeCyZybKAR94ZWI4Hri3MJlWwlt3+IrcMddhQqAvKyeV6R5GdqWtAqJrkPXEB6m7SlvJUJmCXX1yDEzdl6i/atC/f0/QfTu+KukrJsP2v6ob3BGn7aXmEbIA/CxeGHdCRgL3oIfmGotmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+nuo4k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+nuo4k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E12C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722107753;
	bh=1YPkJS1L08vGUUBNIW10tPHIEK0qOZEOhjWFcFEIuik=;
	h=To:Subject:From:Date:From;
	b=n+nuo4k95ckNtLZ9KqpvtuSAHmjdKCW9SQdS8VAsB7C0a/6ioI9R/amTUHr4tHnMt
	 CizCgpN+oQTRDCw/mtilEpxWMYAXyrUyeU6tE9qrSIXp+yYdIeCwuHSx4iVk9mIT8j
	 41thypKKhUL+k41F18kLXTqfoE2WYBHccjFb93woiAWFivSlH3MnGqYuUjxujM3WlB
	 zMOOO/bvba7I7Z06TnYHxXAGa9rj5AqT8OoVaAw/qQQAH8IIcTkhPY7Rd4QN+7Cg3Q
	 2K8+5GQ6S3ofcAM7tammfqPA40rW3IqSvEdLXR8JbAQ0xmCNEQf9qijB1CaTdv5dH2
	 viCrtD58VWjjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E974C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210775362.551.18085335234473409035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5fc669222734202175a305278e0e12f01d06bd58d9b85d064b98b498ed5670
Date: Sat, 27 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722107753
