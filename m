Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399E2146596
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736954754; cv=none; b=lKqUvXnr3tUqhS2jOmb5VQSfqL4mDNr74p5rae+GoTtdSMzTBNd72hlNtGU7CGlpzswh6YdLaXjSstzhUC8OZNv3X/sKa+QXdHFlXLzVa3iuNKRLuD5N4H5xHd7LMt71k4TvkWiIxvvz16SX1PjMcDvvZOgyAv9fARhIm926Ow4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736954754; c=relaxed/simple;
	bh=+bKSl4Mab/lg7GLNSOfkTiW9R07FYrukClPgfCJlHcI=;
	h=To:Subject:From:Message-Id:Date; b=rwV6IBhUWqmdarqNVuOTuK8VwzcKEBWw3HujNT+L+7WbLNJ0nRxC1IH0I0MWqKhLtcQpcV8huk+JY+0MVbFpMGD5uH/WHXE0fg5e1MD2Ph+OYqrub80XuJwarUjpk0eHGFf8LTuzNfCAvrIDfODUBp4wVlbPRM4BPpQIczc73eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWeS1Anw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWeS1Anw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF962C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736954753;
	bh=+bKSl4Mab/lg7GLNSOfkTiW9R07FYrukClPgfCJlHcI=;
	h=To:Subject:From:Date:From;
	b=sWeS1AnwA9ZBc2LbfjUyq2zcmqvecPL+Rra7MrTcB2vslyAYASzfZysI4EMgB0NjU
	 pKNT7z2mrLGGrrSAfk4QyQ08U+EQ7SPJ4Ku+V1lB/oybK+LEDjULRu0Hhz/peeFRgS
	 cRxZ0xS+ql6/rQzKlfn/mh7CtsiGCUX2+x1Naq6Rb63HzxGE/Dexb08NFIb4Fyri7C
	 Nm+xOCFfQTxni/j/2eeKkEh3+VIG1X/6qBqWW8qsaC7tnRyPtWmLySrzz+71MifdTU
	 ZTnD7tViS8RvfxmCld80WY1aXHc/ESXiGZaoiaRvKHDm3xxhzdDxmZDIAH4xQR4QTd
	 pgxvGpYsYM/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4AAC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695475363.11705.2139063976431905508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cc4693fe33846dede2f25e2fd5a5550607d30914bf825de94a4358968bd102
Date: Wed, 15 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736954753
