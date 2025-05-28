Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2668B18DB03
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430594; cv=none; b=iHqBtpC03tBMYWnyiWtaF8X0AGfJPlrx8hITpdx8ug6Or7h/zmchYypM/KzO1In4HcTfXsPIUeytPghMNMiIBERVNBlwmtfRorsbMiyN2mC8G2U9THSy0dev5BS1JvH6gsBEkobKPW5GtfqLF6+mZ4GOSSZjQQmWjg7+iF5eHvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430594; c=relaxed/simple;
	bh=XblS5X+/2nBEp8+pP6GuvsOPaBl1iP8nCxd1lNmUMIo=;
	h=To:Subject:From:Message-Id:Date; b=JbH0a1iigtKzaltSeC30sRzShSKqGIRyrLL3l7Kq0uLC3EIXFC/ps1E1sWvAoCzd4gMBSVpOIxPcWAEc4GXH/7RctRLLJBxn9JMyh7Y+YISYw9bN+ZZPv1yBhFgbTrOCjd08wSouqFk/+U6NODvWoK/3yKuOtVfjkUM4CST/KgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWfUfkd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWfUfkd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748430593;
	bh=XblS5X+/2nBEp8+pP6GuvsOPaBl1iP8nCxd1lNmUMIo=;
	h=To:Subject:From:Date:From;
	b=GWfUfkd2kZDbX5uTe5ngaKIP/7HDsnPH0YJDkjYsrbcdzY34Xk/fg5QKkC+jGLTJ1
	 5mw2XWLtjuy8+FGarmg5y+IL2k/dfbL1/lV2pvxKKRLhPIDumywUNZI6HIyd6FYWKM
	 COaCF1aeM29pY0P76EU3sVfYUzbWl/Z9AzQnfE+8XB7qCbiY8HgjbfDwvbJwP4jHbK
	 9SPlRrcJnF5OccGOKOr/NRIS8a2POPrJ/gHB0P27GughCcGAhJ9GgIrtpPnzb7aM4x
	 3zQLtM+2Sn1IP8+G26g1VC2oXkbSemzBg7BRMTJZUQkTJCn0RRGO1kBsBIgPxsqQcA
	 YNimwj1uj4sEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF9C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843059358.17219.632598471323936225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f64d301b63855e48086f25778d7de710ca6b170ecd3c0b40aa1ed2052fa442
Date: Wed, 28 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748430593
