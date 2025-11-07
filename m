Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BA32B9A1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762529394; cv=none; b=Fe8ym5vlcOuIvMUFKW1KPd6UUCzdvraKIzVwPvzrO1PZfAkCFSi+dIljR6H+CrEGSaLs1x1i5YA7nnnKscB7MrxEmSKwDrN763kmG3wNBuqi/O3lb++clt7agtlbmt6NqzFFJsmxxpr4caGBYcjVVD5w0440vUcqjQT6HtSp1/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762529394; c=relaxed/simple;
	bh=a6mDFsUVRr5Cr7Eo4Q0SDVILezV5EH7jmlJCC81DLV0=;
	h=To:Subject:From:Message-Id:Date; b=PXlkmyCej/EXox6xqVze3J0Nrpk7XlxLqrIoTTTzcHxRUU7z6xGWLCzGd1nb//hFV18Y3zCi/rXh8+GURGbe67o46f5cevtzlA7JAvDIhIaGrFpDTtKCqd5yFfSRpaOoQtLy+FX5+uqsslq0QXg5iB5T7+1jhmrYxW8Av1ZO7KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxlxvRYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxlxvRYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB71C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762529393;
	bh=a6mDFsUVRr5Cr7Eo4Q0SDVILezV5EH7jmlJCC81DLV0=;
	h=To:Subject:From:Date:From;
	b=RxlxvRYlBWiRFFckRtmeU75E79dzSF1j6ZbD3Zbu2c0rU9hcaEKLkC/fPbdrrfDmM
	 153d0GbBLXa28u5FUSz9L3QUmE3iJLLViQPyzY3c/maFA4513BKilYZqkRzJmzXcZf
	 Bu1045wub8quGTCJFhqesorowLrDW8A4b+tJvJlwC41eWqTUA7eNleCYG3cvLo3q5y
	 QRcN+WYPbHhcrXrylRqISgy22e1x40J47MtOY2bnUa5XcqoO5GfsjVMxOJZc/o3CXB
	 rZME/O5qlcqvN0b3kwXvOzO+g7glMyQXEKEoYOsn4bzc9bWjxL22yVQK67UjecoDil
	 F+XuSDKdGc4wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338ACCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252939359.32214.15479101109810552821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947b36053a9d01cedf16159de009f70fbe0b4920e085cd46714c38f715ed008f
Date: Fri, 07 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762529393
