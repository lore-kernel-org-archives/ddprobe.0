Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BFB6FB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752874794; cv=none; b=XJ1Zd4JcyKQcvdYYTrFJWwTKnIW5xQZLqNkWZ0LmWg+jiFla0DDKCD3YlJGx377EsmlUzTEAjvC3bEPzTV3Hgo/ngIxXTuK5GMDLJQ1Ojn5n7fCkY4lE63tyn0ulNbjK9GdgeeXLuQvdLSYU9ZUbUjBXS7kOcaujkGM2/uKd2sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752874794; c=relaxed/simple;
	bh=tbF+n0vV74SU5pQ53p+JuHWfnd/OaObciHDI7KOJAak=;
	h=To:Subject:From:Message-Id:Date; b=AHv4PGXW0EdeDDJwS0epyldDeywG5kw26za2C27LJgTRoWEjqfRhVAzUs16FIjiO2kGAH9G6MRUldewqIVamYe0P1BPBNIVwdhtHIUtczQLTFp5z+WrPEULqoFtqN8nKSwPEZQan69OFIDzIURD5eARdpXIbNiwr1vO4eQEXhpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOhBjCF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOhBjCF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67ACC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752874793;
	bh=tbF+n0vV74SU5pQ53p+JuHWfnd/OaObciHDI7KOJAak=;
	h=To:Subject:From:Date:From;
	b=oOhBjCF2YT8D9O1iUI+DLULhCMObNiO8B+PW18/6FGGNGloK89ez/ZU6dyHtg20r0
	 2DMQxL6a2sioJ9vl/QbV/sC3Mr7meUMBMqC10t1KA9pJa1tC1VH7LiW9VuCVYl4Nd2
	 5T+OJpNUa/Y3JPU6zvRmRwi7+8sY3lj249cJNP2hoOq4EVntkjVBt2ElncD+yT0Gge
	 /2szSjGIKmYBLgWVysjs0cER3a1lKDwix5sd9nxYXzBR6RbPOJFnMlOVsv+xcynfy6
	 4Nrj+mzrUtotYYplp7r6Lwie4ZmIgKkl9oOz08sY/darsb8AXZABzULLKLPsXiuxAn
	 iTs7SaNGieEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208BC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287479357.27228.18374396826820193604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9099ea442a56c4dc1b84a156c9dc053443cdfbdbfd526f4af13d69b89041ba
Date: Fri, 18 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752874793
