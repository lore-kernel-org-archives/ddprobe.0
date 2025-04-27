Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5718EAB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745778594; cv=none; b=hO2cops1+8fn8WHdiB25wWQpEPwoUb6L8Z8aOEe0/1X3/2OKKP/7+XFS9ztHm+jwyNDDKx2eM3D5o0VlszmN+zuY9370qrYFOB2SN7PArj6s9a9bIgX/kV7MYhtdsWd9uCg+TUVTKZp0NVjymHLnHD9+CrqsNxYji60lkYK136I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745778594; c=relaxed/simple;
	bh=3i1RCG6PLvOLyySr2EgOZNI+lyxLPCrgRAeeTha5ptc=;
	h=To:Subject:From:Message-Id:Date; b=g8LLJ8CG/NfBAyuTWo0aTpvy4CnWMl4wWLGoceiEYP5V88OogSg63cJmt1aOagHC72L7wIKPtD8lnhj9bMxzPh7XsjMGGaDeHz2Yd47M5TCw7zeNAhVJf+PJr8TNFVPwK58eC0ZVFKQyVSFo2zIJ/bqYi0q5cWEXRwBSRIOzW1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+DViHlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+DViHlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E55C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745778593;
	bh=3i1RCG6PLvOLyySr2EgOZNI+lyxLPCrgRAeeTha5ptc=;
	h=To:Subject:From:Date:From;
	b=n+DViHlTdVAgwvQ8B5Eromnh7o5+znVnFqFTjS3g7VShvNWxD6mPi67LQ5657nOZX
	 JuimTNknRLcX/8M8+AbGlhDIRueRXkhFX+5p+FsxDwuk+eXnQW5X/uFdTZyrMBHYEA
	 TwJkvz4Kcl0DJ02gYI9bVCRyV0PuT3TI8SKhj53OcYqMY5BqFGxwZqPXOoGoWqtGmM
	 30OOeMmDU6cDCIU+yypt+GPcMPoy7g7bokYm8PAjn81bTvqKLHYyTwlCA1K3w0TSi1
	 D8zsvEAxzvM97iiegemZClItv5O9clBNnMJT+RztZ1GQJ/NQneVN+qJHaNHEd12qc5
	 fSfgWWEe988mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577859357.18480.18049747755757951749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0311aaaf5217946d8feb764e4f4e7e600f2ae06a3b81a15930c27faac7f2652d
Date: Sun, 27 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745778593
