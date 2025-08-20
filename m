Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1653613B58D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755659994; cv=none; b=mBZlpGYYR+gz0Hy0yfwwr4/z6eo0OkghbDhJ6M58JDstMT8H1t4TBR+jegtiT2tFTeCTeFfioO2dmxnpI0FBq54liCCkUVDVHN1fssGNboAf2gwO8SNuTtnHmZNsXNq1Nalsdn5nh9Jtz11k7u5PgTmn74KuNiF6IIQJo0wZvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755659994; c=relaxed/simple;
	bh=JpsJNG0/Poj+nzyo3LTbOEht0xwT2QJPzQWU/UNCURI=;
	h=To:Subject:From:Message-Id:Date; b=Sv+B14EzIg1mJt8rZ0oleqoP6LB7YJ9OqcAxOpXrUJ4BOlkkIFKpXHONOcoq4cfU81/83DtfFTobeJf1tfXQZ9FnRfYSvGXXKvb8A8K1BU5MAIEWoLAaTOUhD/hEiBRkKvjvyM+bRodEjSU+FR+NjwcDUWC/vfRivuT4FT2q3Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQo1SzyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQo1SzyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A023CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755659993;
	bh=JpsJNG0/Poj+nzyo3LTbOEht0xwT2QJPzQWU/UNCURI=;
	h=To:Subject:From:Date:From;
	b=IQo1SzyOulbX69WkTEu5dii7ZFX/TTPBDpcafsZlqN1vDbmX4ORFpJhb7C8p8v2wz
	 l/tdGSxJQYIbMEsIP5XeTAGaNvxcTOJiQDRepKVJoQwcUxtGKQYG7xSnMN+gVHU48Y
	 E7/omIZnIaf1UMLMu7Ngc4D7OcWO5eXrnxVP/znkt67WORaRAPL6pF9H2Kb9LwXSnv
	 5IVbvf3B7eBoV4DEUQXgCvezTFwmzfsvoUx/lIXIS62C3gkBvWNoTADJEVUXi/BY9E
	 KIygWTlTEf4Pf5JJdXZcNLGNmIqg3d2eDCp+m6iHC08RFLiwqsjM5vmaK2H5IJ9Gq5
	 YGsnOxnJaQ3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCACA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565999357.11778.16476722795076549231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a20c0763a56de9d945841757f70dc8541ff03e96a5f9a579385452d959d914
Date: Wed, 20 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755659993
