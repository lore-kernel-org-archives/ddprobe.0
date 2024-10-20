Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC271DA21
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729437354; cv=none; b=Lmrx4uRkA7vcct6neGWbDgn5w8IdPD7zNFTbRO7i++sLDvXQVsUn9Y7XnY1vdhGwMPiCmIlqSGMmvHQOUd8TE2xOCaB+bl9EHMMBwOeY+22jDXWEiWYknQw+1QY92+sxV5sVHXZlRmf149xwLvvisgQgJaGG6n0jKl4IhUdBXLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729437354; c=relaxed/simple;
	bh=U3Yc5U799MoiodaHY2Di0wWJCrcJeRh/dxQA47WfJg8=;
	h=To:Subject:From:Message-Id:Date; b=NyX9O6wv/ksS3GT3h3mUBBuX3sZVnVopYsyOGgDtIokxyIVdUcIe3FUQDuqaPNXTIjw1n3b1F3i44TZp81oezygyxE0FZPnx6AirPVB9bGKqfxHpxlricPvb3ECHA5AswTiZWgNdHRfEB5CovEbfL4VyNJxEvSEgWXOZKproUHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNugvw7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNugvw7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8635C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729437353;
	bh=U3Yc5U799MoiodaHY2Di0wWJCrcJeRh/dxQA47WfJg8=;
	h=To:Subject:From:Date:From;
	b=NNugvw7Glgddl7ddA7GnntQTsCg8HA/N4fY++eHkq5Zsa4Q0qX874pXmJ7+IjRORT
	 FjyDSVKoNxSmZbpekSKDUf0T+CtMTsC+Wa0KDNj8XIatBJsuIbl0KQZH/CqZQlyhGN
	 nFhPUOMiLYgiC89UfcCi2Ya7+6dqZyrjAz2jMSfn4NB09DFrhFFyfSFxBDLEn376jA
	 lmb9hO6q6Pl6nHEMUpDYPCHRUf9l6/+A7iLEXzPXPUJAkveQfEhGghQgWWEjd5StR9
	 qUm2SHWBbdrUCha+NloRq+OMX0eQ4g+TTikyuXhOilX5IGGNgUg7enn1Y8NVLCKGGF
	 1mb3UJGREbl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93665D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943735358.8049.4560282598684303973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6b9a76c2b7d042373bc9d0a9b508741060b42306b1758fedf1184d28b4414e
Date: Sun, 20 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729437353
