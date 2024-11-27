Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557F1946B
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732676754; cv=none; b=GfqzWvFG/J6qMmQP0K/VAB233luQoHg1ZCFbvyvhNP0Cpv7k5bAwZN7J5DzuWayxIYi3mSu4Bfkz2pLK8y90JPVdcJ/z96UJZpFsharRdjS6Dg93Z3koFL7OXzCjd5O8XMRkt1/pLLMVyhHZRRGz40IeMnbBTDpTUPAP2REIiv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732676754; c=relaxed/simple;
	bh=dCed3OEDFat9mGKgA+V/WlzLlUbysuQ0Rj+1DYJKQU0=;
	h=To:Subject:From:Message-Id:Date; b=qUy0R4oa92lkNRX8TrxBPu94HJzsUvJ3wohCrkSjZvetEOwf/B6T+9WVvx+kqgGVQ5wHCBue04YVGirlKHHEvujasYThUeLNg56Ds9dMSdpqaZ89z1elpQsXKASp4mUo3aiJHEhwW1QRtxnrwXAIHBSV46KhhRkYe0cAjRyk9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik7E5VJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik7E5VJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0733C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732676753;
	bh=dCed3OEDFat9mGKgA+V/WlzLlUbysuQ0Rj+1DYJKQU0=;
	h=To:Subject:From:Date:From;
	b=Ik7E5VJPEgEkZPExta8U9waUQltJeoj9iMU4R4SgBejOKiG5OTJRHf0y6Jm049NuB
	 M/W04uVxlCthfl54bGuSteHWIa7h4Eoa9KwX8uOkqiC7RcHjD7kRYP/rAsZgXONS7C
	 d55/ZHxDjTZLAdT7dPe3QglH9i9HzSaJbuTg6bKBBH6WD+JfRFBluKj2Ck+p2CSbbk
	 ZAq+Lmfw5xaj9RePf+UOgAixrX35TmoFEV1mKz5PHUqGyTr5kW5zLLVrp6xAmpEy2v
	 vxgR/nJVT7+AR9S9+NQuvljc7OMp6luq9ktpeVy+lzC6yz56vj050Pef+aM5D1QhDE
	 QbEtcoUyHJkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98776D66BAD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267675360.12715.12753537365144371243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777bd68980661ba85f22210df3ca31637a9d9dbc3937336cd05ccc036673ca04
Date: Wed, 27 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732676753
