Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1532472BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759928994; cv=none; b=mCgxTBxjko56YrsYkKSq0Zauj1DSgE6j6LTkbUXGiMpDFTF0MOPXdxRyDQCmMEg1Ieuc1FMIEBdsbQi8oav73lJ7rlyBtxEjmIJiMqm6mO6o/V7kf0B6guXCDvGGBWZl9NLN8UJAcTig3R8cG3yJ1fOjOqVJ5sNwpkWaw9/ZCP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759928994; c=relaxed/simple;
	bh=7/YXNOh01comtZ7quIFXt29TmFciH6iZDbsiNSrxguI=;
	h=To:Subject:From:Message-Id:Date; b=OW0P0zXDe8CjsLjEY+xKt45kQkNYHF6PvApUTmvHQW7oXCtGnqS7Tfvu7Qbol41g1jdGR0u7tFCLNr0zZoK9muDoNpGp7EKKrX2DfYfvqJrli78FAJS1aCxLsgBFWIwifTu6++UhvbAHvZkcfEPylDS+VmNbkV9HJPDMRy3KMsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoOFLYGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoOFLYGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8228C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759928993;
	bh=7/YXNOh01comtZ7quIFXt29TmFciH6iZDbsiNSrxguI=;
	h=To:Subject:From:Date:From;
	b=hoOFLYGFLg+jMn/hz8QiXZaHfmjZ41hjGb+BZq5nC9DCqgck9xnWWgbf9Qn/aaK25
	 uZC4fNS8EX0bhaDsDc8vTCcaWQJok/aSIwHd9coJDxyLnNjB6b3Ee8w1kny0cchKye
	 IY9qo5PdLSVBINe+5o8DvYwTheWnyouxMt01eXI+6DoIKXlws5p2DBI+jquAYpihX4
	 y/dRqk2s6f6Wc5JjmIhInTrV78QiJ7tc6pKTyy5bJLXmvBrpFsbjWEfOUyKgfoVwpL
	 JJzAJJTHTu6NZO5uvDRKa0xVCizHnq97egDH0lljhuv34JzbBLbTFZBsbK8zoPKbDn
	 i3GDHWQmbVWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E9CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992899358.30139.2500624656839207509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e54dd1f2686ac82a824626779ba265343616277706fd62946f4b993559d9ab
Date: Wed, 08 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759928993
