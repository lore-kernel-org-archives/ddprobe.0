Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9BB12E1CA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717473323; cv=none; b=G/WLNskD1UX0svaIQGDMuQZIlfoeO7YNxidPDC/AoSH0HhLI/HnjGs7aL3EcPtVCsWIorkJ3pvsp1KppglcHhCpZrLphRuhZO7BtZpcqfyOi6MtAYbOaFLP2ziBNHjr23D35Treoe6Qvck4bnMvQm+vMPsQHo9ZSxZWQBS8ohsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717473323; c=relaxed/simple;
	bh=O+X3sT2JSeHQnjl4CyCeRyDx1UkBQdZTa82vLfrPOyU=;
	h=To:Subject:From:Message-Id:Date; b=kheq4RnKNbauioqvGxiURn2ii0XUObNbKZiJRhXvnNMMaDjOruy25cQU3IuooZmfmjxxq6vmoLX9LyOpZdyoxAYN4EqnuS2vekgHBH27Kff9ELLVCNwTBjFZWdOAOYDHcj6cPg8UmQ7AizFDugtzjFDxtRKxP3OLRGCTuTNJZ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bi7v0bn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi7v0bn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29094C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717473323;
	bh=O+X3sT2JSeHQnjl4CyCeRyDx1UkBQdZTa82vLfrPOyU=;
	h=To:Subject:From:Date:From;
	b=bi7v0bn6a/8Ij8mpuhoO+hqiybU4IIqanCdsYZsZn03UDSukcu47VTk3Ik58AqNLr
	 iJoXXuKiH9P05ynz9EnDOBXKn4ptrVkc2TJf1A19xPByIwlbK8QNqAnJTpMIV8QjgH
	 Pv56lLm+/uKuwqvb04VrPa/yWPQS+sWdXVlxsa/d0fSTz5wQB2bAy6fFACk91g1MiU
	 N4g9l4t2jsywB9L8N+LGNUAnd4NpMtvYa00mIWHpiUB3ranusIDmMRLy0TRE/CLZkG
	 HRkm0GN6jcnPPINKkPiInaO5Wz3I08q0rW0e8gsLNwRE5gMI8nQIaMYIK1nuijpQtS
	 FdjYfdo1xVq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04233C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747332296.16279.6883928021571830931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28086b4a648899ec2fb5ef767ad7f42b53d538918f44caf1ff4645042159228
Date: Tue, 04 Jun 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717473322
