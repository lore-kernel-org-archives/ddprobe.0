Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20834270557
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764714774; cv=none; b=TAt2Wela71Xc8YClYsJ8s8njJ+hZdxgEnX0JiwSBgqx/nZKe+3NUx2F0X3MhqQvGyp69gCmJ+A8POEIv3bJax78SSi7oqhUYN9s3ntTC1JqI0EFXxzENuO1tQP/bNvcZeFnqW7QlAcBk3Znp5ljYoLHCiDeQF4KqtYGovybjrGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764714774; c=relaxed/simple;
	bh=0W4qzk3mH8tpGDxkvZsBuR1JQigBREUBbwhsbLtiz28=;
	h=To:Subject:From:Message-Id:Date; b=GRlk0mxlBIojFs8z75EJC7fSLU9TEpHzqIpkCTCy39U6P7X8cAKV2iJFNdq3V9HY8S3OdIEPuUSUndmLpxOLIdrk3n4SoRKCfUovYQe7J/SFb3yY7+HFdqpAvjsIUXfuXo3c1cDffMMO1rPKFo2l+tVLx6MD6PkqKTOalGrjmUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcqVIRUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcqVIRUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764714773;
	bh=0W4qzk3mH8tpGDxkvZsBuR1JQigBREUBbwhsbLtiz28=;
	h=To:Subject:From:Date:From;
	b=YcqVIRUPNaxkCv8UOf3C7h1znYtTjLQyFBYG11yF/8minUfWFOEV8qhxj3SkWBghb
	 4OWfSr9K9OPcejMBRSb2DQLH2syS0ZQUruWlqGP6VC70YM4k5wGucW57fWoTrfAkid
	 S0478H+pnJFi+PNCc0ZU5hIUXrsnG6TKAFktIqFEMmx5kHbjcDcqvm0FSUzajm4Ob9
	 QxVADalGp70q7r6cPnSVlVtOJDlJ3SC84beqyrJ9iYAi9T0p5XhY9myqquD3gW+Onw
	 6yTX3ixG005/c4vaOF6p3ZhZ3gXloqWnmP3nICVLba7DFPD8uvpxlv/KvG2GIBE25v
	 rYPynzc5kugbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB7D1267A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471477360.7798.9776523026401376657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b3397ac3043e074f2938d34d8cc4aee7da39dc99b60742230f2b090e559299
Date: Tue, 02 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764714773
