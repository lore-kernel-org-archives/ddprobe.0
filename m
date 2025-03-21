Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611DD1D7E5B
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742530794; cv=none; b=HoSfnRYK6Ox3P3hFOf6mrwHWgYnbd2j8uuKG2kzrOkdhxsKAgvvcECrZjhjZBRAeUjBSqVkuEltVY74jKViEq+kWJpgjLPrtmT60JK/SCYOpf1yVYEyjwNnGY4is75YUlVDIL4HQUTIayl1uk2s6GrMCYmfwbk1QeyxOLpsxYfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742530794; c=relaxed/simple;
	bh=y7oJg7xLYK5GNevs2JMOWsr3AjsBDnQawckxLxWCX38=;
	h=To:Subject:From:Message-Id:Date; b=BsbmzZ2rR3/RkCzDIpo5O6uHlDcg8JSyCyLI7HxPU1HVZWY5imiOhY67wgBqMsJf738kSoYbDLVyAEKpR6yTIaZynJIzsfPDotHewNlnX9aV/RYlPNc4740qvhHftqPc1G5sj2k3hKPkGz1ES1G5ogLypohi0IRi6Q+VrXqjkA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKYDQF50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKYDQF50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B7C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742530793;
	bh=y7oJg7xLYK5GNevs2JMOWsr3AjsBDnQawckxLxWCX38=;
	h=To:Subject:From:Date:From;
	b=uKYDQF50Ih3Tgb6vqbTQPR102XGczhoQZ7n/GAGATzEX7htgW9b1DHj2cvylreOmG
	 uZO9rWQUAUtQaZtutd/f+j9EW8qs+hsD4beQRVRF+svK1Jdln5PwYiOjZbOmT9DrUF
	 saUgovAHK6Cy5TCpb0qQoCAWntlhSAsvWjRqhC6bhZw9zMr/LN2G83tDvTpkEn2bI7
	 9ILgKm8Zc2lZHOC4HeKJpeDTCjS0v+YHBxxj4PKBmGQuJhB+0smapEekkhsIemkPcL
	 Udr/NEVUYwu5nl+Atup8T7NaQQvUPgeCush+uaYOVbWLV6Y/AO5mE6ue6scpjp0XLa
	 ZV/2pWyCIZDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A801EC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253079367.18063.13859494876790044910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcdbf6e0dfbeea51118f5db4dbf3f8cb3c3ba8ea055787a3783dd6f23ffdb44
Date: Fri, 21 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742530793
