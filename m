Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DA623ABBF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776391654; cv=none; b=rNPQY5j88K0YkVK904mxzx460VZhMm6ayqDBc2K293VgefGN2+dfPcd6k/i2xwh6p4sKyFpx0iT04tphSPB6Fb80oonZp0dAy2WnWggiX8W8g6puGxPD3xividr1p8I9EObgF737sGAVcvNqeKgtG5QQU70XjbEp3WUmClfQRMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776391654; c=relaxed/simple;
	bh=fppJkcEgxXPaqm0cd0c3X2khLKj8Sf+K30EiSSZf7v0=;
	h=To:Subject:From:Message-Id:Date; b=Ve/5PbnOCqf2hO2+Fk1IlPitc6LugHld4BqGmj2WHCzxg86cDyNg/buGU13VM/1qFes0GClWg4F3K0FzQOoQMb0B9tz+n3g5m9Cp5QrXh5meZCTNVFtcYKeuDx7drewpSO6VL1v4rWz5SOhTyJ7FaNgyZIFUw+oALK6gV0qYjyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xjnj1IEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xjnj1IEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0A2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776391653;
	bh=fppJkcEgxXPaqm0cd0c3X2khLKj8Sf+K30EiSSZf7v0=;
	h=To:Subject:From:Date:From;
	b=Xjnj1IEMhMiQTbKUGAgDlwBKL82HSeqDFKiN3MgcZJoSFm52g3eIxGC3t/qleurDp
	 NcUV+3P8wXw9dxB4d1tykYrrFnyQ6EWQvk2q0oRAshZMx+4r14JHZHNt4lC70d786l
	 bgm/ftbQhxGoCEzWOhoHE85AqCGUq3LS5meojoh9HC0O0omPv8JtlW+TcjAS/flRXn
	 OIzPR/krFcEQd0Y3Z1DUhGT4XxalmJvoNxfYp8muuSq8ZlwsebVXY8Nliq/vCrKldk
	 izL9D0IIEr8Njjbku2Vz0ct5+ViPRzso5amfBrtcjlZqTzOg5YlBwVv7GM3D9BdRus
	 OTe0xVarPXxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA70BF8E497
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639165368.8471.457813842081088683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18220428ddbe261f2c7ca56d4d150dd6d944cc8b5b448a9a4ee1aa250f91649
Date: Fri, 17 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776391653
