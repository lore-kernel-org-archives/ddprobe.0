Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C82823370C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748806794; cv=none; b=qnRu3i+HatJvIj7VkIeMJV40rIJiOChnaO29LWAOSMgB59yCFQQUYjdolY6VK3SWSMNUX0qYnKbRYikOuny8VTsU//oO4LKQ7D/2ubwkjb/QM4nuzrXZtSHxzCEUsWlp8qseRPwqGC7Xz7VBrFPHl+VIL+ksiG5mVYWRve6Mwp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748806794; c=relaxed/simple;
	bh=u8jYp36ft13HtuQz7bWCYkNiIRXAm/zzdaIO+v7GSfk=;
	h=To:Subject:From:Message-Id:Date; b=NWEhRj2YdHVx2A9IrWkiUQ6jXXi4q069qnNpUpOUnBJGqUI/Jc+Acj1Sl9bYZ4G/OruWuPktNO+LZC62FMxoA5iloFIgFqrwGOzzGfaQOshwE/7Chz8mpgMiJa9KSP4BG+F+eYbYabQS0vSu3l9tk9hQGrLOw9NqpY8Ho50NnTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjUOkb37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjUOkb37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748806793;
	bh=u8jYp36ft13HtuQz7bWCYkNiIRXAm/zzdaIO+v7GSfk=;
	h=To:Subject:From:Date:From;
	b=IjUOkb37VO//JvC1bWoy18FUQrTisgR4g1jnj6XjTdF7gLSfhakm9l8ICeh+v+Gc8
	 jm/4JBjwsZ/1TaT8l2RDABBmI9/2m2cKVrPlShaFVNDqE6RaW4LvsIEgqhNWZX+jR4
	 Epsizok45R2LoHaeEj+fOgoSqtJ/9BhwEdOaN40PKTpM6DiMhARxe6odk/nDFrredW
	 BomemtDUtNS77HxWx+CAsjy8Lo0Tye+UxzMRkucDVm604CzkVQaiMGMpKbeFhAvHY1
	 tYMN1jyPi4vTEAGPbWm9kAbCDbLn3nV1MsVCMEF3HgJur10rEKm6XbsvKTE5SV5BY3
	 0m+dgFQKYhTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AFEC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880679358.13466.6604051919709447225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8e28495bfcce03247728bb3e567a2d246b914152dd9b67572841458d158118
Date: Sun, 01 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748806793
