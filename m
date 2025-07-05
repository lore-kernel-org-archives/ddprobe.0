Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B571D95A3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751711994; cv=none; b=dbcyNS4IaEFUgMrd98DNcGxIrLW+/TbZRv7rm5iqiWZI11BNqHbHIqjpaHYUCEW2Umkq+P8rraIRzt2ZWRJP6TR1TJYwP2s59Tv7lpMjE004YhTJwamrjI3DmBXZs0JJdjGQEdzGPba5XXevtxVyj/xr/O/3W2KnFmkS31Wkb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751711994; c=relaxed/simple;
	bh=XFChlLkE2TY5zaz5CMUi2kstyIXSCUh3XEsBzeJjOvM=;
	h=To:Subject:From:Message-Id:Date; b=qOuhm0vKH5W05ehAux6nkwBYOmjt6yUxLzOFQeec177oSXkK+fYCNcgscWuHGlPG86hrQf/BFOGZ1/ZD/CwuZssFTdAmj3otIx7vMQNmn9xKFlnDkxcB0AvPnAZfI6P8Tn6R4abBBfgi3okrTxzBphsi/X8n+n2aB47NqQA3rvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVFSROpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVFSROpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751711993;
	bh=XFChlLkE2TY5zaz5CMUi2kstyIXSCUh3XEsBzeJjOvM=;
	h=To:Subject:From:Date:From;
	b=fVFSROpuif2M62ipDYsgnE2hbx0WWYWfDhKXswh6UDm1ztv3mklnY82nC870oVxca
	 rl7ZJXONXqJlSL17TH6LfFQrS/eG3nYxJhGBjAQmbJGXFV7KS5YZzjKylGlGY5XXBr
	 nteRnEG4r/JYLS6fo7z7dNg/dwBFt0L7TJzh7n9TYqDc5sNziCvScxhpb4wwbON/oh
	 1E2O3sCUGDoh3lQ8o5QhyM1S2U/lA/FFf0HzqLTL7Lm/FB1kRj1D+jJAw0biPhxVVX
	 AJ/gAMct1leIVCFojQVdT5gMhtmlBsI9dK14RJtcOprob6H/rLE9bK0CzYj4f2qiXK
	 y1PIKjkYIZbkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6CC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171199357.32629.13876168740518998420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394d415e988f3efbf6169c3af4e57d1777b910193dc086588fbc6b59c27bb3c4
Date: Sat, 05 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751711993
