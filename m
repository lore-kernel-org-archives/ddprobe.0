Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D76280009
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747673995; cv=none; b=d9ijw85uep0ODo6LJ8C2Iz6b+7coGgiD7+hTSLGh8lGHMeXVW9svZXIxuXU7GgNNuaHYdJNFBo2LUn/6PnSycufPVJs9t8U2WGrgw6sLUfxkOaFacSk/XDxiCvxk992WdB8EXxTNI7sJ7UvCTqkO7aAQPTABAOCJDcg17lxm8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747673995; c=relaxed/simple;
	bh=pnQP/MpMb0YGNBZLDdIq0TJaJW/jbQUI7vGl0KemK1w=;
	h=To:Subject:From:Message-Id:Date; b=OzqUZyPLbStlIHSXqZJs3pNwKV+4WMpSycw/eOAoFLjJ9bxmeanGRIkau2+jrMJ0+jJch8qdLn7qbsEJ4eo58rWdCJbn/0mgH1FpVFBx+2NPb0w9mBSlBqGqSYZN+ui2Qbjz0BK5rkEh7R7b+TrtzubDKS1zSXw+Wnyxeh60oew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElAUBoFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElAUBoFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747673993;
	bh=pnQP/MpMb0YGNBZLDdIq0TJaJW/jbQUI7vGl0KemK1w=;
	h=To:Subject:From:Date:From;
	b=ElAUBoFawh2/UsrqTNC/8DUcT90Gm7fbd/30USJ+vP/lxfnJ/k2M0v4NCAGEF56HP
	 8tpjtnA+91QACq6DOvoW5PEHmlaE+G3mvvfXSLboGFrh5pzMJ5gyH5Kkg/m189/W3x
	 BsMuCKMKpcAjOZU1kHxyTIu8NTbAru9//qsOcvm4vWfYDkMVp3X00AWJ512JI4LE8R
	 I6RVp06d4ik44Gd17h6znBQBjvERZN9MIFOFVXK3TFLVVBtQHKADB+WI6DnypFTTk5
	 CfRBVuC44RmLd3TGvDGFFP74bmAwTAn1JYw7pC23g7jPA2vWk+CxrEhaLBNT8VUpAR
	 I/+0aDZJIDOVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED54C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767399357.4697.17450488203105005415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0080331f7476a854658b33b3fc5f7fa739a31f85afa054f4ad21eff7740341
Date: Mon, 19 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747673993
