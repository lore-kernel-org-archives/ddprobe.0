Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C6728C2A1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773459894; cv=none; b=NdcQUi9umAFj/4tXSpYzIaw93CzEMQ62I9D6vUTZ31Hq2mYp+nZkbiVZ/iwn4yLVWJyc0z5Ue2wSUUa3v3ECyoKUR3NHCtDd8UMCyHE2tIasi+hY1ZcdUAQQt/0w2I7UL8Ltv0a+Ol/KnprGvm4tcw9Fi1xHApsLKJPyrsSudzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773459894; c=relaxed/simple;
	bh=dG5y9Mxh2jLCjcJVzRV7ks0Fv6QYfFXEQGDF8i82Zpo=;
	h=To:Subject:From:Message-Id:Date; b=Gc+9f0BrmdUIAzLBxYwFcJl9Y+cm/Ik9gL8DgXARNZtuj+cFd21/0MufK1DWwq9hTlrSm0viUJNPaC6OAvGg6bFXrZ7fePc7VA2u9+1kO5bZy+fdbqn5tHhJFLQFgu8TBdlkzHaZWppuQd2cqOayr6kM1YfF3T0Th8b/xyJsknM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OERQtPex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OERQtPex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1798C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773459893;
	bh=dG5y9Mxh2jLCjcJVzRV7ks0Fv6QYfFXEQGDF8i82Zpo=;
	h=To:Subject:From:Date:From;
	b=OERQtPexDz5GkbLe/CWPWMMvgBqTpBcdGIdDJKdHLY088puLqOl8y6YwoyLw0tIqa
	 6WKF1rXsX1QzZp7Af41tctO7hJJZaM/Ecj31Cj7kAAW309bq1sYrMMSoc/FfjZltEn
	 Y47IRsixwKSpu1a1eOcAjwrR0a5vHa7RvkQW+NTtnzUp70Z9YD0ZGBRKUSh+YccNxv
	 S+yen1luK18v7ejG/lW4wFC5VycYgGa31EojrMuSXfUrwO1iYpdwgXTLjEc6h4sY49
	 TuCXRUYNlTdiJyKRDyi04AM29s9ExJdoyHBdBu2aiyOWd8VWWBIEgPZTaCMpftzDxd
	 Ru8XdK49IlTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B2FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345989358.21081.5389542498858531099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5cdbf34eb89b5dbf0a18d20358459ebe72acadca56808302d8388531372f91
Date: Sat, 14 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773459893
