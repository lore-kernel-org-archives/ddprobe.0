Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373CA2DAFBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762681794; cv=none; b=rPG2dDKjdLBh5kZTObtqhQOkENM9581kVAHV6GAWlc5xFhBTabALnO1h8AIAqOTIvYWMPdU/AOycKaWU7d6N45Zw4IvfxfWYEzGRZv2ShlvKGCWaOcEVZoVInCDUspPamiINQ0OO+8q75XTnTXNR6GBnifCDamWzfofhBGQUjV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762681794; c=relaxed/simple;
	bh=ItBBRDqHw3pIRpoAn4JiAE8JHDQlsBK5mt/h4HraTWs=;
	h=To:Subject:From:Message-Id:Date; b=dFrDQUEk4Grlb83BIZIemZzCWG7mpkf14+bOBAaxZH5UbN38WtFcUJ9umOyRmREwZ6in5T0oh0/qyJxXXDpEVkVphXDVm/guSY1Po4g+ScdSKniOYZ6UMlU8DUk9tjtHYzQIop3wUiX9GDv+zolHRWDRT8Zu7DIGlA+J5jMHoRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecLT3KDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecLT3KDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C18C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762681793;
	bh=ItBBRDqHw3pIRpoAn4JiAE8JHDQlsBK5mt/h4HraTWs=;
	h=To:Subject:From:Date:From;
	b=ecLT3KDh800b57uDCVq76lvCR0z8+FiAnbk8tdxn/VGuFAw2VTjKh6arA8yaqu4v/
	 cuPoIxMP0z3O3fhDdg7/DYZMNxhVvJixB1sOTbqE8tP2v9OOgvlgV2TwPsPBYu+rgY
	 co/OlBqzrG/U1icEVQuHubeMNQPxAjQ5BtVNlzgs6DZfz8hrG797Ezf0kzckdU0Ahw
	 zE/Z7M8gW0C8BYw2c9vj/IujKG52iJxQ5BWqgB6/p6fD4fJ31XwFHCimTFX4hqOfAX
	 2S9d/4QvGdU37sLavQ6HL9eUPdmH77/IbJVNR2uJwHHY4RmrgH5yh4IbCxR8yjoaRi
	 3Ju9aHVjWR6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8CDCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268179361.18282.15894863573115651068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cafd1d2d6867232fadca5d23828a06a2be174061c385ea2390febdfcced4bb
Date: Sun, 09 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762681793
