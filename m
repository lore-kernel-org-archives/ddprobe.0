Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A7784E1C
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716546803; cv=none; b=TTF9kUOIF0p+v5HP9/eDOnLPz47iii3yErMgQXNJ5J4vhrFiwtlGFaaOn0keS3fktx728TQ/0MNHXppkSIYaQmHsPwD5Bl8CfmjZ0IuDHAm0IQDfeXZ9t48V84gIvHC259LGRv1j/tqcW0dDqWT9UDh6bdf7pFuenCHX+fTt5/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716546803; c=relaxed/simple;
	bh=y/TK0yTcKx4ej8n8/c97hbY7NsWS6r7LWIL+06x7KSw=;
	h=To:Subject:From:Message-Id:Date; b=VN71c+jF4GHiGSukJc6hxxD03juUGiBUSHeHJiIT/PFm73j21o4invA2scTrkiDW4g6PkgNvltnGeEX8ZX7oT3MzE4dCMliZd8e7ZP0SbkdxB2jx6qsHpofTa5px8y2aqvlLZ9X0QHTEyhShD9ilDn6b1/Ir3KcTd/p4u9zAJGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXwsnH1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXwsnH1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EBAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716546802;
	bh=y/TK0yTcKx4ej8n8/c97hbY7NsWS6r7LWIL+06x7KSw=;
	h=To:Subject:From:Date:From;
	b=JXwsnH1LQDWvs3DmEHD7lNfYu9JWdGtLimt+bnGyDFcteWThQ7oY1Ix0nQO0kngyl
	 /3FRIBZ/qyRcZgh3S6jdWhbQyJJtFMGNJ8VL+IxlRBWbVF+ECSV4a4o6uxEYmIm8ma
	 8NDn/LDaRZBeDcMAzwHqc+6fw5rxIL/T63S/ozElQ7DNjykU+PSBLZtG4LrEwa1gGQ
	 W0KRCJlEvCcx0rhBe+igByQz9sIxKqTNCLWe+WsVbQvRiDrhD6DJg4vgIHHwFnvilX
	 6fwHHmn2ee9txAOL+rO7BXdP8XyPf8sN09EpKMCx+TwNsfbqt4PkNg8uaBB0NDRYD2
	 CQlH2HMCVpCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C149DC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654680278.7824.14445528293066113100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc76875238457ba1b2383c0242e122f45a15323532bf0aa06504817b34c37aea
Date: Fri, 24 May 2024 10:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716546802
