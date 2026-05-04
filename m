Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB41364923
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777886854; cv=none; b=NT2sb4RjVe3IVUun7YSAkk5Ls36EJYpKy6Gk9uqMRDxkAupXJRvcJvehbgamJu8TYDsKhlResD9SQ8ukbyv9cHfsJWhVRyGEf0pmfMX3Oyv9A0YkmpjLUiC62tPSWEyToOEGacZlsc0dSiTb12bfigtVxw8ypH6Rn4A3Mf5uIEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777886854; c=relaxed/simple;
	bh=bibUHC9wZodd/15QQdATHQzhjKSVezLf9LcseKZsoAM=;
	h=To:Subject:From:Message-Id:Date; b=QXebGmJ4b/j44Jm8erliVbjtRXAO0vzkojrQQ68pn4TE0PnxQfGufoV4uNCWwI+Vu3i57MzQKLb3wef2Cc9Nz8vdoeENzKjx2vHh3mGWIXEh8QYuup7rioMq2UpaXgPphkKSf+CHSMwo6k97zPGkYa8qT0GBF4Kmy7+wIfVFKpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDpZAK+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDpZAK+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79DEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777886853;
	bh=bibUHC9wZodd/15QQdATHQzhjKSVezLf9LcseKZsoAM=;
	h=To:Subject:From:Date:From;
	b=oDpZAK+sTqdKW5kAMzDt9sYcG+qbEAimzJy9Wu3e0BKly2Cix4LU8HeUw4KTwv/Zb
	 2peRzpgoEki+eHDNOsEPL1B9obndjla2x9JhKnbDyNylNPT3xKrHE8YK83SfsfkNEa
	 3WJGUGczaQmuKSf5PC9XtRDVRfaAIWL+uSyDHFpaGcut/pT9Lld6hrF2Xcg1f2h6PL
	 xQMFFQdXHFjgqVSUoG7GOA/MbQnaLSF/vu0v2CQA3GNKFKS3B7GDOp05ap0lGV4CQv
	 Lb6pHQHlS4fHQVxbV6Vui6CRjvLdbHpg/Es0KfbztTpFm/CqQttI4Kjh2CJsw3DJkB
	 ZDdbD81Dviu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9377CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788685368.502.15610889830051299287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44255a84429f9d41b5c8205b6a0b653cceba520c53f36000ffaf976c88ddf697
Date: Mon, 04 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777886853
