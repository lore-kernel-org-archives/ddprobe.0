Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777343F787F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784200714; cv=none; b=hyn26uaRtw0cApAQhhCcsv0URBRyegHwxbmuHGzTgZC0LcvUOEFjyFG0pM1auCb2SoEejxPOvH+cTOXDCYYsTwITsQxM3n22zISEMHAzeRUDVcnPB1yaaiXhJiyO4cqXJBlE3ypwyIsNzI1rnA3iZOtDWaqeTDn1bCfU2fwowOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784200714; c=relaxed/simple;
	bh=QfmM8xO8VMkY6Xe0pWXlhIH2GqBXXBeULpBO6IEP5V4=;
	h=To:Subject:From:Message-Id:Date; b=dwOSn8Gr3Q7SvGGKYJv/8FnZbtYphN0ggDKOg0wUxGLymcVHqO/MM2b6uvGdnFsU6W+8JCsaB3Hx3IDhgpI5f/Yl+kbnREJQuB2kddlAhat9mL2TR57yKO1W4bS2TR/sR5dE5urLJlufr62PcNqq6Ym1cDoWoyNghSUNY31Rrlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzA/VuVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzA/VuVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D504AC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784200713;
	bh=QfmM8xO8VMkY6Xe0pWXlhIH2GqBXXBeULpBO6IEP5V4=;
	h=To:Subject:From:Date:From;
	b=LzA/VuVmY5YwK3DTSiZaBpGNSRQMCplgyQUTUvZuY/+5O7nv4Q65HM8DYx4SOk/xg
	 tZPvDjneIsrbYaXreYqxQhnLqhgGoTUZ3c20DlYdO5IqDPBuoYZGR7EUM43nKGtDFT
	 Wn8CQoj+kP1mMiAv5iiDtbYaAMfBXNhwFnG2x6heyGJr7D0PHQe/2rfwhUxuYR3yEZ
	 1/z7DohU090vFNRR0UuSHir8xJ3EC4EMJm7EigE+cFbRDTHoBX/TxDIicWmzu0m7Cc
	 KELzSJqCAFW5ZpuecOHzPCL68qGyCxJmdFqtgIEucrd+6VI1rQpENfqyzHcVRe/hyC
	 hhYzJdnELm+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C0EC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420071369.12111.17279156344707558521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c634802704805e9dbefbc929a1fbe6005f3f0ad8fecd2aa3d21551e78073cf
Date: Thu, 16 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784200713
