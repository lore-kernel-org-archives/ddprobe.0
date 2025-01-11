Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286BE18FC75
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736607954; cv=none; b=Dp9cXq5OD4WKH8CPtWyi9C0M6LeHk9K+Lw9Dsmr3CKs5rRAHocOfJ4g9F4gjw15U1zvLqV7yrTfyePMkT13WJDpNZsfKFKjRkXIsLRpTwGTdUsehFl3rbKCqo/8BgWvIOPS4dTfq+7PzsXfV7zckYVShN4aA79c9AMBJa3JAbo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736607954; c=relaxed/simple;
	bh=oD3Sv3HliDA5xtuoOoTqqKv9pzLm9MqK0c7Ywy/l1Lo=;
	h=To:Subject:From:Message-Id:Date; b=oHadbiVG8r/KsjxXuYvdiYG2UZVZpbpoRoE+wgmVwOz4pf6yx1kc7I/WzPP6SHAWZcy2328Yl52Uiw0d9HgOsI5w4SNI67NdXRCb1lIoTMoqFfyKJKQGMY97d7xibagTua0oNegAFAOViu8AjFxqgGBtajWReDx+SsChmOHjk1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZFBwpVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZFBwpVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3761C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736607953;
	bh=oD3Sv3HliDA5xtuoOoTqqKv9pzLm9MqK0c7Ywy/l1Lo=;
	h=To:Subject:From:Date:From;
	b=VZFBwpVBbRz+IAysB12LKXQF4aqDoAamuZWzh4KFKpa2Rq98hbbioD4acH4/A7uF4
	 9MqZM+77Q4nWnGGyns/ENOZ3AQHS1E2Lb39YSwZhpsx4DqrmX5YjKU1SD97tAj0O6R
	 h8i5mZK0GI3YClHad+XSEG+flvGWVI3/e5eA7ZNqsI37HsIY1CpbdP9bG5041V7BJh
	 lF7G+Jz5ibd7EZevUZNiqyUIZcqXRs39Y0DtNP76BtvdseN9hgjgrH8JpFyQoBizRf
	 8JUJGpZaNS/oIQatr+/5Xzb3mKcUxO6vYrgwpzSUZkP8GpaKXf9+pmrHikpK8J9IeT
	 saM9vI/rILjOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93395E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660795359.17181.720020957933690317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84f8d9873024a7fa02d2045e83c190c260342a47116499225498863e6745707
Date: Sat, 11 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736607953
