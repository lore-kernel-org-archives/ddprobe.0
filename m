Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14423318146
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762360794; cv=none; b=mz8p3FufCNflEsGdFNV0n6xhLDXZ6zgYwGQBoCOQWtlXOL2pNqw8z1dFOwJvS1LIDF/OT4ZL9wnIk9pNs30ZWgJYeDE/7sl2QCB+IaklZUvrG98TTVVW0logFwMTzrtwlSXiSrFyK78S3x81JgptwC38pfJAk6nyJ8aTvqipfFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762360794; c=relaxed/simple;
	bh=6qpYnFwhIGQTSl2fGxnflp3RajdRpeJbUmSmVlcU88E=;
	h=To:Subject:From:Message-Id:Date; b=IHEfnNQ6vFhfvdYqtHDv7QIZyecKuiJFsmWxYHgl6Pjtl+lrlanab1YKV5BoJqWw2pr5dla4+m9FMT7ieXlE/zDcZc6HKbxQ5+PQGpl64f39lOiLDRID8wbmaBrN+grTjmpplVGceEA93jYKZMRqokuO2gqlgMi3VUvDtvB9HXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkOFgMjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkOFgMjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762360793;
	bh=6qpYnFwhIGQTSl2fGxnflp3RajdRpeJbUmSmVlcU88E=;
	h=To:Subject:From:Date:From;
	b=JkOFgMjpjHIZ9eyzOzglCZIY9H2y4Pg6QS3pL5NMHAkvqUnmhww7XqIHHcgMvBiwV
	 vNxUDVUnj6dhbZjWbZJePcIBRC9ed0GDYxRYGVq0814+dICtjf3+GyYCxIA1Vhcdlb
	 xLxyQBgm2fm+Z7PtonryzIf1FbY0YYe41tFq+ZyoT8tE1aIuz0TTcBO7x+8Dj9OEE8
	 1oAQeA8rHY2nz38liijhlszGVd8CGanzQ0ennKH0ZZzY9n7IVEwPXCN2tSwFZrwEkS
	 WTNl6o6LWJi3Ma6yvRauudPyk4VSuQVYEsiAIv2p2o1RDESRPrraXj2KmDh7My+jkt
	 zr9cMmP7rxLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CECCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236079357.629.290796335762026569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575c9486a755d883f3b28d984334db1f0156c077a618d4209e249533c9df6480
Date: Wed, 05 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762360793
