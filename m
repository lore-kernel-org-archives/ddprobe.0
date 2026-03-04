Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC64E1F4CA9
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772604894; cv=none; b=uwNgr4wWzNAECBUP2gi4b7XKNcbd+tfTYVNUAV3MNf49dZSKRjf0fgjkuuCE8n42AoNhKjr6YLxWfraPGivvl34FjKfsfOE8OooPHZGhWkLDipFwa7G9YiL6SCfrAlbo5TA+X5d7UpB7dCAhctZFLdS7SjMbWh3QJkVuuecaFMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772604894; c=relaxed/simple;
	bh=UlMHZ4G/QOp0ax4CXZdlZ4aZJWLBdFjSFqp8pvAZBQw=;
	h=To:Subject:From:Message-Id:Date; b=ibSNtTtlmRv2tp6tU/hYXTKfBm+LBjuwqmDyrsYBaNNqm256K1I9jo6/gkzcQXuEjhUIIXQyBtIQYq5Ymw7Vfq4+q4Ldgl/vSv0bIzYnGkxKlBDzxb0Tyhv4gmvYujq3nVP1KqusTUAKLhHLzZz3v/epWtTNywyUWPz5ilhd/bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwXW7+1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwXW7+1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20E9C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772604893;
	bh=UlMHZ4G/QOp0ax4CXZdlZ4aZJWLBdFjSFqp8pvAZBQw=;
	h=To:Subject:From:Date:From;
	b=jwXW7+1C3CL/1fG6yNrEwerN3AGg8UvQDiphjBvC1Dp92x+IL30D3IQzLDONZ0nV2
	 NSEkV7Ah9nrf9OnTTeW6/95aHKNqN3JzvEbThd6j7WpCfeA3829Kv5KbFS+NZO1aL8
	 S7BZNPlFPYo6nCzBvDHZ8TEJy86Oqjqg5BmfJUSpKA1SjsUeFeUkjBU4OygU6BPgWy
	 Pvy9vUkq0B46BguiNZj04zC3OAgemNBSloQGmf5wMMIFQjVv5TNqOys1IIweVVGV/W
	 zVXEkQlvaZ2GaUTmVdbrjfK2tULvospc7rkMTnYOexG7UOa5F0TwlyEbG+J0J7eind
	 B9JiAXFiuzfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98617EDEC12
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260489361.17208.8166144443518425805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561e03325503ac8fdb8b0c3be5744a6476c43787587f10151b28f366af23f519
Date: Wed, 04 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772604893
