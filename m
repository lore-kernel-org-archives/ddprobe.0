Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1973859E7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770656634; cv=none; b=NriKgw43IfgI24CEw9+qq4qTGMxBiFcTJ4J50uuaj+ChZdhasF/ACF2y6jLkxHKXjW0tXcN5AwfSe+Clh5xRDsCtCwnGGfu8UDhcekewHFi+IwnjaEGU3Mlp8p+3rDrhqRMBbaQJ9kglRZtBmsdAemU/h6KQD+ODfYMLAGmjxE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770656634; c=relaxed/simple;
	bh=F074A1zjVdU1fb+dieNESjhFsKc2+S3fho3dQfFcxl0=;
	h=To:Subject:From:Message-Id:Date; b=Eh4Zizas6gzq8tVpoTnFb0hgoc0tBrS9W2SmzvFYc8wugiDFybdqa5nlK6eTzt9rZd8cFx8Mpq07zNH5+AwlP7K0WB5t65LrCcJ4WIzHhaFEcYxfrAHXEZKyWUVoikzTBWFyY4QjY6l4p6/d2YcpPuJgK3pDFPWuD6oIvB5Tnso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RveskVc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RveskVc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0DBC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770656633;
	bh=F074A1zjVdU1fb+dieNESjhFsKc2+S3fho3dQfFcxl0=;
	h=To:Subject:From:Date:From;
	b=RveskVc0IHGPGR0xbTY1BcU8utv4JIL+CPk4lgpXSeEAHrA0atcWK3EKxSzYdfD7g
	 5TNsgAjGwbOQwCzGWM6PRgukATXH0zYLuliLL9wWfJD/jGSApbnQBFS1Yx33gIeDvI
	 N4tHEDfr1NcDMb85UdlNjW3AwnAcFpjnyopT4u/v7HDKSX7weS0HJt2X7JbStDp1UI
	 uyBx7OV9fyZeAzg54XzXzO9suclFG+1j6hMeeCIymBf0G2685m/rKfQ0S2cii73Og4
	 fdHx75T7OJnlcIDsyoFVNjg79uhjMER0KQJ6G7APOwW4/kEjxbJvJz7N6Cw/nIbJuh
	 xQ4Uy8hC3UJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A773E81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065663361.6736.7527489446765366851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c20676f5a5bd40ec0fbfca92baf79577579e5afcddeff5af5328320859cc8e9
Date: Mon, 09 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770656633
