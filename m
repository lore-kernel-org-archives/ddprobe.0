Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0277D1DFE3
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710917897; cv=none; b=Nc7g57mPs/ZHZ2ztv/S9+QkFaV/2oBfgN+Gm8NsKTjO91fj3c3xqtCUxtpPeglEwbAL/1SZllI+A/evcLimAZl9EhFwc5Dor+Eheaoc5vA5815ySK1bKjpxdxpLEXHtzKGrlwK5pwijKCSOsIKjQ1PV9l3FahNt3V9o5DnhnW+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710917897; c=relaxed/simple;
	bh=2v5wiYiNnTFIHrPc2X3CgGSd6YIc8lbdELiSBxteGbo=;
	h=To:Subject:From:Message-Id:Date; b=oQf3lkNkdlZY7LfHbprZ/t5VQvNZMVhuKkMAViK8iFXCK2ahUuVVushEr2nKPk4woqZJOeeXlYgSB0+TEeyXh8wWMk0dcFqhAMsSp5za6W216Ff+KbAVP6QbbmF7OmT8BE7QojvUk7EKa4MBvAjpgc7ijNjQm3Yajdb+kEsXxQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIoV894S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIoV894S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F793C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710917896;
	bh=2v5wiYiNnTFIHrPc2X3CgGSd6YIc8lbdELiSBxteGbo=;
	h=To:Subject:From:Date:From;
	b=ZIoV894S9/6qul+IiwakIvKc1OVhXVFpZb23QwTVS+kXTRN+ng99ATlyN8ywOcChm
	 XfOTjZh14l73L1mXV1PPc5c1/jOKuvvtoidGsAT6iop6zCMZ9Nc+bo1WQahFRMtV9T
	 riANIpPvOY6nhQHrErU38mGqGMYvvaGXljUZJC6rkp+6tIJOJofSIIjSWoUL3bJOjT
	 83uqcaDQeFZmEoVAMzEpw+rGbrKoaGVxiQu5AwqrBYOEwcyf+rC0zeWdtztlJEtTj9
	 GMSBTIEkj4lsbkJR/JSINL1CvPMWTSQ79/dBaMdtGtKusBKmFOYXdPDv2qNPD5ajJG
	 9XGbXKXeaYQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70767C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171091789642.24256.5821439851626697221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152b3e56a6b6572f6e2b18288d5d64974b637238db111574cc69c033d19d7acb
Date: Wed, 20 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710917896
