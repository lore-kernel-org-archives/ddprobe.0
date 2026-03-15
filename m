Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D15292B2E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773616494; cv=none; b=cuLo87iYuqUGheHTQ6F43FTVjeMnRcw/7QCi9TLC3dFCc0i2FhMtv1cp1PnNncs1oFb508XsdDzU4yy37lYTlvgfTR3NbWwJhppuQCmZoPyw3+lxEyAG4LgudoxYl75LLxn+jYHNwIKmPCwEXrk4TChqAlhwItixGIe9JhEI0Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773616494; c=relaxed/simple;
	bh=TfUGKWeReMZTKM38maSHqoTjBVmvF9XxtTq2Sf0pkZM=;
	h=To:Subject:From:Message-Id:Date; b=jnO32HHv9FirHg/t75BhF+yPNFeObJzsTr3Yp1KVYFVqK/uGr/579wpGyDpn444122FRwNAAWGMyy49seKryEmUSDFr32vmidK50Pm5HzmK/sVNHQj09ESBilgAsnpeJs9E6G7guQqOeSEGaZ0Am2DBQz15Kto8zFs5uwKh5U1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW6BIxmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW6BIxmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDAC2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773616493;
	bh=TfUGKWeReMZTKM38maSHqoTjBVmvF9XxtTq2Sf0pkZM=;
	h=To:Subject:From:Date:From;
	b=gW6BIxmq3GlzJJh+I8Ty7B+XfkLJDf8/sPmxNxUTTo2UbIDg5mqlxeAJwUZSUI9ue
	 NoXSHZcVK27t2hccUq9Ur9nkTwkIF1d1r0sK1JembbHyKRlPNh9Sq3OcIUDIBu1MCA
	 a6NN1QCtfKPh7g3J6H/1mXLGXfQWr/m0NNjybjVefo2wm09g36j9YUFpEjYS9/cwYK
	 4wbfhCrW48UtkqYYoqfHb1WFP6KdD4xWH8a1dXudvnF2PJJiYfZixkOEMbM1g9Tzp3
	 JJ3oG0vy/JxfPtV8xhYv/dp+v07xVOizUuqXItXKWq6sS9GEWuBOQGBEEtoIbeZoKI
	 p8TYO+D8ObxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99DF3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361649358.16068.84358186918856595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03273e49f599132e1953ab32d89783e4640b95b11f65da630c8f4bde4d32577
Date: Sun, 15 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773616493
