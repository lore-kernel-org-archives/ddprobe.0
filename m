Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65B21CFEA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747260594; cv=none; b=EB5QHW5KwynMR4NPqwxHigynAfEOo/rmMu2qaUZNE3fCnpHwAseAwpSrQRXt+nlyQmNrKCsta/yvYxxf8zNBTQNtHEztrvdS3lMN9GntysgjUMNthLNvDWrUyMyo5onf3q1ck/zLsSgI6epI/BK+DNiAga6ImwvtFNV/I2B7lSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747260594; c=relaxed/simple;
	bh=QiRxppjcIiOr2Dnz/+aQ0ruhpJUQb2FjGvZt2GZ6xRE=;
	h=To:Subject:From:Message-Id:Date; b=Umg1SSN6zySNrqruXvJihpu/tK5LKlrfE38ClONyWAwEIwKMl8NjvauRAWLTeu9BK9kMNV6ZD2NUlIb8mpEk7x8QtbyCFnSHqutfcOEHTQlRFlz9wTob0S6tZ7UH+wsSRxdrJ1ZwDbRBWKB40qjB+uWhQ2OW8PWhQ+w+a2e8DMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaSAOzXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaSAOzXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F41FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747260593;
	bh=QiRxppjcIiOr2Dnz/+aQ0ruhpJUQb2FjGvZt2GZ6xRE=;
	h=To:Subject:From:Date:From;
	b=AaSAOzXMluu9AYW8iNe4lf2Lb2f8zxsTe45dxMo7zYLbYboTNt7imkvh7I3PvttZe
	 HFffej+4A6PFzLsExY4A8AxDVM3+kt9/mUxe93qrA65d0OL25gLVLThxvr07YG5NWg
	 ua+48zFXo0K2R9qZHrBiKTcdO9I/r7MV1F5DA+vdgzKLHtygqoyK8MUuBZCDC3lr8x
	 WWGDLRFtXPqbEV5s78ROKeiLhIi+SWdxxiJvxEOPMklPJixVT+zBp1h1SJOLToxkTD
	 JQCKwJKO41wSWj9SE3/4VvAHn5233gYCGRq/42zuuwMXWaFQ2T2G6hsRgS3FtX8YoJ
	 oRGCon+HyM/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F660C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726059357.13414.8689224632954600087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148f3966b930c00ec4225b2fe0a5e912502f7cc42a9e66aded41459152ce3e9c
Date: Wed, 14 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747260593
