Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24904C97
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779741754; cv=none; b=I1mq9EQdvPmRVPx7vpaX/u1Q3elPu+d4CWaRwGPryd9DycP3ENIJ3aCj8JTBfcMkP7Ag0fkaYotEwnHFU+5nSpq07CgRAoqApPszG3T92x9Mwll+ODhjm087oj0q2x/j1yawt55FBUJzVPNPaxaxo83O8+hj2MUJ+pt7dRizU54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779741754; c=relaxed/simple;
	bh=1SQd9C4Mniz7FPX2tMFKVtscJJzYyjhqVv/uTRPkD80=;
	h=To:Subject:From:Message-Id:Date; b=gGWtAoqeJVHkHbz4CBcI91ie82yxI6BOyMpNCzuXd2zg+pXZa+XJr/PCGDuuHrObegtSFJcPhXdvOmhWVYaweAiNACZGaGe4DFfzEG/vL/Z1w/UR2sinOv1pCYG/KuYvUMmKbBxzfXGxm7UknsZLGJ90zn+BCZgpMeEDqrW+aLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLZZy/oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLZZy/oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11FFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779741753;
	bh=1SQd9C4Mniz7FPX2tMFKVtscJJzYyjhqVv/uTRPkD80=;
	h=To:Subject:From:Date:From;
	b=uLZZy/oZLBaL1bn0XlGN7rLqdwqPO+C34QqD7faYghNEYvBUbr1woapy0NQqGs64+
	 q8OsZXDgGtnh7xDcepAw9enh+t7gWbH7d97lPMhMaUAhQBAtyyUM4uDhi+ICCvah8c
	 RP9e4eqLZ3rob5NkuQj32P8rwe3G6OV3OnyU9LYW2iYmYqWxh6gVQJA6TBFTTP6BeO
	 zh3/9lfiAW92Z8osqx/t5x1fBNh6jrhWxdTfcm42nhFhL10A6OtNMRH8INminIj5rn
	 bJSfjVhTFkpxNZyEu2z1CIdBuJCeP7LL+2wY9dLlPrkOd32F+hSNHQ7EdkVafVo2Zg
	 2FIQUSoUogvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B07CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974175368.13640.1828912502283060227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53285babbdd56b93fa039697d90b496e30117b624338e26aaf492a6e86383a1
Date: Mon, 25 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779741753
