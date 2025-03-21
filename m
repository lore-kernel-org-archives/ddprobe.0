Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE052AD0C
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742532594; cv=none; b=F8kS4CPp2R7bRT/2450m9ZABOtLVJVIYtZaSeTnRc/OGgEwfEVgRP9yuipq1nFYeR1sZY4XDyjolrk8LCiXyHl+ta5iv2sOcmefVFiqrEkOZpEYmFzjybPSoZA/nJjyjmFdoQWNHniWZSY8Q9QCTujJr7K4LTAfTFcuOZBolkGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742532594; c=relaxed/simple;
	bh=JQgJKeCnN4V5rsFPfJEIgZT7NjJ2EHfpGkeHaFMSf7M=;
	h=To:Subject:From:Message-Id:Date; b=CXWhNan2Ip2iHxqE+3ZraVZR9op+7y4nwJY+YTTAUTOefU6t7VdLF21kyIkJTUKO2UhjatqVu2VhBD7sDjFCA8G/52Yrl+BhJe2nZPmBLia90LnrMpCnmZpfBIbodsMWh5Hx4WCl2gqLtJ8i1t9BQRS7HZaaQf5DucIjNGUtISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtryAEQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtryAEQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BB9C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742532593;
	bh=JQgJKeCnN4V5rsFPfJEIgZT7NjJ2EHfpGkeHaFMSf7M=;
	h=To:Subject:From:Date:From;
	b=XtryAEQ6u0QpcHqCo0n0juhcZipVeLgJQFFAJRh0aR7G8Cn4brN3PvOEcHnshrIqV
	 Wzls4VaN9US306SlMRcZLWn27goc0/QuGrWoLEMeAoJBSkGkGGUc/YUx71cMbf7/QB
	 wNFRustHZRh8ZgfR0E77Ef516dh9MhHU9TZ9cbh3XIOn0+WMw0FpIqM1Z4sUgr4POa
	 T4glG5NaC77Gu0CkQxip+vb/t0mjs5hyP2Dwj3/D5ifg88fmZiVOJ4FeVG5N0nJjF5
	 mYg88vVc5fYZdLhCRywj9YcTZNn6o5nYpfIKj7aqdOF6647S22hoAU59pCdQ5cj2KY
	 nhva9Pvji6DVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FBAC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253259364.22520.14982237037864884704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb06f44661a893d24d0cf7c85d34334f735d03f4ac6b3d4505fd871e5db8dc46
Date: Fri, 21 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742532593
