Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB40410F7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTpiv8nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A11CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704686896;
	bh=PNFazv6kG3pdLeAsjKQ9lWnKE2qLV9K7h9HF5G2orcE=;
	h=To:Subject:From:Date:From;
	b=KTpiv8nqhO/2x2EAzleXtlYeaNORCe/GSUsFLxUVE29H/h20qSI9nCpmBRmfLovGc
	 Kz8+iXfHbodh9CR8qEtS6kLvzdY+0TyqRm8t4VsdD4hu1Xzw3PaqCpTGA2WRT5lvLl
	 jS8vAe3mARsBoj3rNkud525Qjq2W4PjMCmXjxVRxy3ftNblknQirJQ+mrAd16QDxSb
	 3RD8AndMwEFOKVcSzCLaFsQxEa3ck75XQMtWC6q52WIDdrYXCHLX92WMOAI1lkiRIP
	 bgZQgHgahSZ/qdm6lJLyHxBQOz0oveE7HkV+W5gZtDgEJVt5ET8VMlomLTFx9GfVoq
	 hc8Cf3lysk5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1CBC47073
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170468689637.7261.3802844396585042056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c112d4d80af49cc3a1e655c68d034238006bb362f004ca48d72a17f48537f298
Date: Mon, 08 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704686896
