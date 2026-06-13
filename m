Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7582D97B9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781360794; cv=none; b=R62CauYxFByTcrIxB8NF6EnKY4K6vjzHOo1e7JUwDjBkK5o08yTKvSeGsclXF1WoA3FA98T4x3fG8Ih5CQHPObAbgtPuReGt+lL8Jg+Scy09siWDXp5n/38cVEHrP2B6TFY5hkD8BXPgUIONl21moduIgYAiXJhJU3zxEIDgBg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781360794; c=relaxed/simple;
	bh=REunVDOyL9P8rDfpIfMCk20Iwos3V8gM0KE+NTuncv4=;
	h=To:Subject:From:Message-Id:Date; b=kPrEG7IIcupuI+MvZ1cNjHj/spU87RaHSGG0JYj6LH4BN1HTMI+GOoxN9treaSNepU6CMcIZuIFuXVlLWjgLi9Biqtrad3v2HEsU/fLjbd6oEV7i7FqwKDlDIHGGaMfhfKPMSu5DuBU4PaQ+0L0Fk8FD7ajCD68RXJtNXnH6Wq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eohxPfX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eohxPfX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C805AC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781360793;
	bh=REunVDOyL9P8rDfpIfMCk20Iwos3V8gM0KE+NTuncv4=;
	h=To:Subject:From:Date:From;
	b=eohxPfX5NTV91XVItiKl0hEf/Mo/Fpl6pjLTytQzPwxqnqwWnLnLc8uJ8CYmb1cOk
	 kOtPSenvrR2jPnhjzmPsemYvVYUSoFY8UCJMTMsIRmO/I2hxFVfczRHeFbXzqKpI0o
	 Vvkjlq30WPGgPdnburGsDAj9BE/qPniLG5QSHKBxOX2vkDtuC1uYhMEoTUc2mxv7a5
	 QF9v4bD/2Bnp3JOwNCnc/Rxh1z1QRKbjErE5wGcmDJUhC25g9OuZVfDiuQNG/uzBWZ
	 sUtwFj49nffn9CTBwP4dXXMdfOmUpDwjOUbRLBb+glhivl4F7dV5spTtfdzKyYvm6G
	 kNTmYjpLtpd1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE47CCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136079370.442.16175404862212657019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2506ebf7eab25010bc2ed1338137b35fdc941777dd926388b4b7ef978ca47a2
Date: Sat, 13 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781360793
