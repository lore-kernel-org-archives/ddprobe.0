Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A832FA32
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772808294; cv=none; b=fqsn+4GbpyoAhYwVcqRQPQ7cZSFNZ+BPIvgGqZPmla1Mbl1CT4TrL+NV0bI3Lgv9wsx+VYuU926sqI7/1iNS9BkouHO8AIacXk8Xn2h9732iZYfQFKCRNlxcB1RH7Semt7qXvLylmmP6LxJJNWJft9q/6KY6jnhWEBIl2hjl//Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772808294; c=relaxed/simple;
	bh=oQs0kRikhMZRGf1ZEUKQrkIzCp5wx32IO6XY11h+/iU=;
	h=To:Subject:From:Message-Id:Date; b=Tt3+k0onxfaUfxq/Wr/sFL1cJd3+oIhTO3DaAOgKFOXOYOUi1RE1rDHqFhh2RJYK3aFWvdzOkG9w8h4A/6ZjmY8+Z8LZCKAff8k//p/hUju0Y8gjjlf7JqjK2U5C5ThtrE6Nm8km0ucqdVkUPFXBUti/c/+7TbA1eP2InLIYOgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8Rr6f5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8Rr6f5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD06C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772808293;
	bh=oQs0kRikhMZRGf1ZEUKQrkIzCp5wx32IO6XY11h+/iU=;
	h=To:Subject:From:Date:From;
	b=r8Rr6f5U5YJqbIJ7N1GSRgXgptBiBRo4xdTCDVfAS7W3qd8xYInh+8nOnLzv8AI35
	 xlt89cXnF9aC1kJethAeiLv5NZVWa2yQ0qKCiQVFegzzKDBoze+1XgmT/jDe6xOSAz
	 e6rvaE5HztZE1p3J1t+z1GpJ4juIzCmTsReDUMdoXtBQc9GJ0MUIeyQLDifc11DNKu
	 7969Kj19hyUdAZvjgn80FsG/KPttMWyRmLVm/1kswCs1glZxGAdhLM7/MNMlQ+P5N/
	 /ntB31gBxFlt/uawlceVk9mmcUN80ZVTECZ6Yq2rbbNRuwkA3JrUMCX2b04AYnSlM7
	 xqRN53MhucH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5EFFCB602
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280829362.23317.5420840639695514072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfb0a715c8c372757851bb8edc0862a594038baf50648e3961e277de4955209
Date: Fri, 06 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772808293
