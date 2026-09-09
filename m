Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E36D492E38
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788936634; cv=none; b=lXIRlcDXgIgmkZdeF0eOu1ZW2/ZoYN3f8h9DYXZ90dLuBLMGGY/UQ6Jm17DSUJH9xv2IgvFukzHvj/tRAaIZ3OByCx19vzEdjyAgBJSFnJ70sbPskj2dimKOz9lMBoCVykQdGOcpDJ1HAElbJ8qFFZQ1W6LQa+ZVyZgWEolgehw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788936634; c=relaxed/simple;
	bh=HSQ84pRpahz5LSKTp5hN6BjaPlR1jXHSZ2HXLWME9do=;
	h=To:Subject:From:Message-Id:Date; b=DDS8OWRSkyyc43SKc1PiNMoUEG6KSqGKSLZ0mCE3diY3xAN3jHSvbnq+mqdLGcgknVpvg3eXp1QHoVs2k0+fnSsSWpZaGf9fxHSSlcKeTQVTSzAES7DJQH6NVBadJwPyi8TNvVIsKCK6g9ONxlIBzM3XPD4eiRuw3MFjZ/xYM9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiAcGVgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiAcGVgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B8BC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788936633;
	bh=HSQ84pRpahz5LSKTp5hN6BjaPlR1jXHSZ2HXLWME9do=;
	h=To:Subject:From:Date:From;
	b=aiAcGVgySUPxtPvGJUoK5g0QM4QosWz3r9/D6fjHyQjdbEuc2T4Lx1VmKgl3D9kKm
	 2sj35FhKYd8yITfhq907thwQ25Sj5tfDhIml14oLg8AEcHbntblfOKXYbLO/yNgCKR
	 OxHLplUq1IyFlQdKVpnSMHjyxLM2wrRo0fqpelNZ2SolfqKXGS/CaVEcuDYgQ6q45V
	 AdC8iLBn/xs3eriX1A8Qv8VzQexrURH8hBbRBfq1unVrRYp4dl6vB9J37Pv8MqBnU5
	 CMOGnZZkAgkIdWa/TTfgdkO0LDyiMJdEqDXduSyQhS7Dl0qhX+UTxL01OnMNV9hErT
	 /OqlKJIX8q3Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA76C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893663368.5968.11609530421446465872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef6abca091854dedafcc507a8b64ac885e9bed7f537c1dbc0348f567bc24c63
Date: Wed, 09 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788936633
