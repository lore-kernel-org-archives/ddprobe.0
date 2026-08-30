Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C21D197A7D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788084034; cv=none; b=Uk0QoAJbszM7/gRo1vSBmbuxSDnA+weIlPsOGw0uOlH/lvufbppMDP+lvuIjG9RPlYmeMevVbcDGYVIBDyFbgSE7TozFcXq+D+8+xAJFLVHRNAMaXU/zBtN6XQaJ1U4bNtVJTboVlPIiybyRyOFV5gmWk8HJpPvVwwzg2CK+rnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788084034; c=relaxed/simple;
	bh=jOLmEZGshVQYOc0Gck7CvLyBlySkwbj6sWy83RNaqiQ=;
	h=To:Subject:From:Message-Id:Date; b=DiKKZZyM6gAzRPcEwJQrJVqkrb+McFIsCtCGxRVHCo3YR/2XMgc9s66zIJprrtV2x/tLNOEfxtRl7CETkgyL9LvZgWEzHZQQLMsDJ3aR1COLV4b6mZDkLAX89pzuhSIB02VkjCpiaqMxKIwM4iPjR5P4mhCujw449TqM4VLjN1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOVlzFKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOVlzFKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DC4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788084033;
	bh=jOLmEZGshVQYOc0Gck7CvLyBlySkwbj6sWy83RNaqiQ=;
	h=To:Subject:From:Date:From;
	b=QOVlzFKZaMuUYEuaC0BCcgxxEL8aOMu0FB/rMqaHHI23C8tHTvIyqxG0NhqupJBoo
	 I/iyjvxIQB2uiwYspvPS31QcimuduG1mI6UrsR259TRGy8ldnoXR2hfSoE2s4SIeiD
	 c2/QYYHWLHx6DtZCWMvUA6g4Vj/V9RGnEIhKnHNYxEEVqwaUk8xsEBv6deSWchkuWP
	 v4aQFjku2sa1jUqhHo6yRDdIS94/FR50mItXrBTZTrJ0SXO06AqhvkT0PjViMw7BbI
	 Gp+Mfrtr1ZWYy/ZpMA9goGHSSoe8JokLea4Wb2NOchKUuaVcvs0P8mKace4ajEls9J
	 6UlfKbQnuIc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F5C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808403368.23870.10712061102818708794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1852859002047bd614d8cee1cef91c602d6cff03849301b4400a80600eb1783
Date: Sun, 30 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788084033
