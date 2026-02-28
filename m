Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B743175A83
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772312094; cv=none; b=nuuAEyPno4Ce51AtUkuG0Nlcnl2t/RsTjwSer7odQPF3cppKzZi80WvnJfyR0CFdE7e0cPplNuYjiTctCmGaiaklH5YdZHXH/VnGFnnPXXVR6GY/jp7gh+SK7WnbvZLnmFpisntWeU08ChZ54RsCcJQFUIoSZ1jzEJFqBH8CyDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772312094; c=relaxed/simple;
	bh=71JXBnxXXJOWl6O0oj+HM+mcK56vakcOGRm7yvzUIMM=;
	h=To:Subject:From:Message-Id:Date; b=iFqQNZQXbNQ34R/E5x7N3FR6ZpuDSV5pbnRKlZatDSHs+62mhx9IcUJALrM3LeRDHHkgcj6YHNQPbPvJJ3LS2i+y1yJjPcQP5q59sEGiCnwiWIKEKSUehsDWvGI/JcL3zkYGN8Rd1X9G2n+9LPq7ux1bNb8ijjph4EcpfHRSYv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaEcxZVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaEcxZVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF940C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772312093;
	bh=71JXBnxXXJOWl6O0oj+HM+mcK56vakcOGRm7yvzUIMM=;
	h=To:Subject:From:Date:From;
	b=SaEcxZVfAcuJtXpl5iuGxRS2TQrTLvuLKPWq3dfPl14fLi8Nbkol/YE2o4scMMTgx
	 jKIf4Ly8QS3xuRLkEdouxsFfrwgHg82oiPFt0DfHx2fEnopJA0mJ70I2hc5+t6+iym
	 Zzp/CgSteGQn1wjgstbTzrVzJMMgJIfJGyC+d/wiONbm4FkSturlSyMtfg9dF7Ts+8
	 qcjL52gN2BUnDz9SyvQ88s+QY/3OAryTas4KyxZyZMxDvNkJ9xv8VNawPzX/acOKIJ
	 vJSnPBNMpmDe6SdTAeNJdFy6NbfGOzssn+tdpNHboSI5WCRKpCL9OgjBbcq1n8S/bc
	 vWRAWZa8XCrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97900FEE4F0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231209361.6308.6721555703651662305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c045e1a8de6ff962d8b70bbf2a4a1dd8def6aaf39977fdb84905a3d80759badd
Date: Sat, 28 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772312093
