Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA2A28A2D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739468935; cv=none; b=BYb/denn9eaqCSQ6k0N3esxg9rciEN8wd3DDSmb2cGHZjm2Nv5jhaymMM830W0alT8VA3x9OAPFGCYUFxrd8VOn3BDHhviT6rFWadYXiCX0t6WclN2BgY8+8ywMidz/njQsCU7siGuinmxAbeb9qtdWBh5+H9UI7HvnasJtHBmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739468935; c=relaxed/simple;
	bh=nsMpyqsHlGiJzPYvj4yo/ouosUA1SkXoJE4O0kKAWp0=;
	h=To:Subject:From:Message-Id:Date; b=hamBL6+C3Rc4+oyHotX299Z5rltEZn9elcRz1pAzxoaAq6fM84+3tIU2tTGSFRjtoO9SlBDvM6uYLdFs4yjaTqD3WOHX/ujyG+1E3g5or7uWq0LxpMTnpJwZNfGRG9RhCJYZt+UnHnUTeSRA9wi5LOGEgEBxAL+AHoANa/QpLqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adiXGXbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adiXGXbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFBEC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739468933;
	bh=nsMpyqsHlGiJzPYvj4yo/ouosUA1SkXoJE4O0kKAWp0=;
	h=To:Subject:From:Date:From;
	b=adiXGXbPswr74MxQUWOd85XhCEgXGRvGq92dyL5XQZHYv6BWnhw9oGEgGDvRrn+vn
	 e7oU3L6k6ZiXUd8ydfA4XpAqWWMNNhq7DMKr+VnxUtJTbPKJRbXgNQMMDKJ+a4DcuD
	 iblxTvr5yBwoe45dze+g1/KE3oHoZbqbvM5cvX+/i4E6i0hEO1c3c0MQ+OtL4JZzoe
	 adXcw9iHYc9Vuh2yU1i7FA2e3tIXzWM39aVfnDuehMQ+aA8uUbaWBpZYU8fa0FkX+C
	 M1ucDFvfmVGngOBRnj7ghImw7nQ9HrW0yqMZVAS52dGF3bVP+36AayOF8ekhCLc2UE
	 PL+RlWYTDxkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F9AC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946893361.30487.10362819538398407900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7687b52d896cd50ead5022871247faa9bd5b1fd77fc02e8cf85909379a2926f4
Date: Thu, 13 Feb 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739468933
