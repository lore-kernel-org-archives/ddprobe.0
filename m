Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C892D1465A1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748630393; cv=none; b=Zc5spDf0yMkGSt4wztvqgBU5YN8vdE+Nh9FstwdG0vEAJcX4OnPdrf0TvCv3iMYbxW076XeSTjIAyj0fyeRnemoUUzTteGDQpU2DUTiyaqaad/iGYOoLCSiL8CytGwbdGnQSoGHtba32qbrJm74fFDEAaa5nxY2uHc+euJPD9uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748630393; c=relaxed/simple;
	bh=3G40yEKieqzI1mUpq3YJ0wgjMvIfl2rev5lR6aa1FP4=;
	h=To:Subject:From:Message-Id:Date; b=c4klfvqVyj5/Oz5e8BZ0bUy9mHTnXWIwyk+tXQ/5Sq/+Kkt/RU5wl1SGqouJux6hXJlcLDvXMx5oCEJAeKPJn6k96VuY+zPHC4+1Hjc5hCWqoGAt+hSsmC+hQjDKLFWeuoBy4JruopRgwSX5pN7KE2+r3MRKkL3pAKQNH8EW6AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2LQwArY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2LQwArY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBECC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748630393;
	bh=3G40yEKieqzI1mUpq3YJ0wgjMvIfl2rev5lR6aa1FP4=;
	h=To:Subject:From:Date:From;
	b=E2LQwArYgXEbeTz+lzbC4f2XErkRN9N5rbVqCCSp2M0lGHixkckKEFnNm+u+xScrm
	 c73q68/rPIEyOtD4/fIVYwuZGtaIH9fJNNuYSZ7MAZL5pZ+SGUXX3LiQub25ieNt6K
	 qWxBZZxDkIeInRAn+8ZQkmko1hh4Dwa23r+cUYBnUqODKtNXKqrOmtA5wfC8w+KUhH
	 14gyrSbGx/QnnK6y5kA9/sPVfuiVyyXf9BF16bltNxNvWVk4bkZ0hmnWYtPguCShqs
	 d+PGbX6S2WLKMduHCyE5Mhp3vyZvf4LS7hyzAAjqFP2HEy56/eTPuce160xwGTYPcE
	 n74y84klpQGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E13AC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863039357.30174.1716083885657125995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d00732824b9f3b4b26f8f4a92d52169d7627b8f02df81759ab7d99008fcedf
Date: Fri, 30 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748630393
