Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D7A1F30AB
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739031953; cv=none; b=ZBmUqhoUECpsubf/KSeCQ6sblYKEADF2VxSAf37jQv+pA6WMM9NwUp4biVppbWTqjxih662y8I0Igb4Jshywrkfv0aXumTtHjtPIt1cj5KdXLmmT/8EpqXvh8m/YnSScF93P65drd1TZROlRgQp+UjJk6pm6tNVTYodNrNYSbQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739031953; c=relaxed/simple;
	bh=Ft0Hq7UNcwVl0YaPL3oSo/+/3R6ypp95jymaoZq0Osw=;
	h=To:Subject:From:Message-Id:Date; b=SZCRFXT/S3+8j+UUlThiGW3jww2NHR1hepYVp+YOIkaBN8pwOwTw8bO0zb1gy8lCbVED8RpOtu5t6JHyuGRQtwTaiIhk+5SijiM1qCuGNhavow1kiwZ8Fk07p5vX83KB7NH9XARwp7Wlv5MPFyE8YmymsKqCXsLGyMoOF+ooTAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raMA0ZGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raMA0ZGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A5AC4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739031953;
	bh=Ft0Hq7UNcwVl0YaPL3oSo/+/3R6ypp95jymaoZq0Osw=;
	h=To:Subject:From:Date:From;
	b=raMA0ZGyQC9v2CFEDWpkkyQlYWnmk85Yuawdxha6kRMVAUBCvlcHgeUdnnesJYuK9
	 tJU4uRpY6/btLvWJZfHFGOdAD6J7k/dSu7zycqV3n7yxrIWCtRXvHWOt6wmtHEAdsD
	 0PKyoqMHR2dQVso1phlx1onidZzrxvCN+Z3JiB6zcr1WsavqhxylXTOjbzK1/Wbjk/
	 BkBsErmapKCMRW1H5soYoYzwtiIEM1fk5M+UJy1y0HbUVvunoOomrc7VCM/6LfzD0O
	 F87maBO12OIAF2U1EMHGdrlQzfaOhRyLKYU7t7AADjg6Y9t3CHvpzDT10nDBWY0UGt
	 Ihv6UMv+kr/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9FEC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903195361.29909.14493518422003890664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1878d876a80a386697e0814c05f0ef9830352ea93dad1142b052ddd34de086c
Date: Sat, 08 Feb 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739031953
