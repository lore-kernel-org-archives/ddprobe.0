Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC53C3557F1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761069593; cv=none; b=ezsp1sykEKuABqWaaB6tIXvgAs2fE/+baNiiZXzhqHHT4qdHwkHtigFBEp19HkodxVu7gSJ/G1z1zZ2Zf9V4mhoBTKchNzYeh7ZxETdFOL5Eoy7F+E+RWSrXPvuSbxaDl5JYr7v1e0YBweC4Qnmge7Z5SwW8wAA+oc1vZy1u4NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761069593; c=relaxed/simple;
	bh=sCp8Njq66O+0/M796wce59Jc9sMfpn99S4H8W2IEzsM=;
	h=To:Subject:From:Message-Id:Date; b=Pz0dUjqBBXT7MSHkB8NzfiPprsqJtiwFr/BCA1n1mCbJoUPs/7n5BnbAH5k6m6ANfwV4yQW1KvrbSXlbolcLt7TN0B4GqbA0gNgn90lOcppxjD6hWNbqs7o0uuxyJ23vNDJPr43NmL+HyK4PBiuWn2KOrfwON9KvM4AKaFhXGZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3oPdK6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3oPdK6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761069593;
	bh=sCp8Njq66O+0/M796wce59Jc9sMfpn99S4H8W2IEzsM=;
	h=To:Subject:From:Date:From;
	b=g3oPdK6zLtUJ+fsGSYciTR5w3iSHm/eu1tIwsr8/OBSScjL4TCcmNTUHNWDJ3EaW9
	 RnHvMA4FifH0fnxycAH/TX/Pe1/aV5DEO6Luj9GXC31A7R8fiWXQTQHHaTzV8sFvzj
	 ONE63QzZu+P3h0eEdJ4z9YNLM6plFovf7jUVy+f1xuwfwmUm49I2dve4KDy6D4eAtn
	 WtOxtwbPEjRcqlnpWUnA1V1rxZJ4NM30dGpqxAfozCnZXLhAtFwko7IDNAKJ+O6uCy
	 /zUoT3FKLhRjVIYBSLStwa6gBSJZ0Slro7EtZnzpBuh6SfcgU64Ok8QNauHfPm5JD3
	 f5vkROvfZ6MwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F4CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106959358.5417.24280530004204517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f56bd1e5306f67823183f34009bdf600fe715590d0f68c05064ca51886fcc67
Date: Tue, 21 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761069593
