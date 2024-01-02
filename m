Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAC14A82
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtGDt3QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A95C433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704210496;
	bh=1vVA/URJxiRXbYA1vUTDjuCVKzICY+Ftr1PY2nXT4fI=;
	h=To:Subject:From:Date:From;
	b=KtGDt3QJxiHFIu0x/X0YzG+i5HY+t5BdT8X2oBZxxjsUQmulG5pZaeJxF/gXlSwH+
	 QQyzIZsPPFIIekhwjfT38Yj7VhxDhHGoojYe5QLPM0Az7OoHbwfEdOjVfm70bNnvrS
	 HRNYc1WYuknvq9PDFoydcWqVxzDTnw9HmcGpgq7bMVaeIzNN7o47K3StKVjLfPySCM
	 O1XPuFy9i3PB0RjwCEz8NxeuBswbj+XSDRoO+T7CqBF3CpKMpePC/+XOWY66+VlLTO
	 aOjq2YhfJ81OY7nBE8ff6bLYuS2jjNMgUdxvKj8Bz62c3Fr5x4L4xVtUDRhoH/fD+i
	 Q/pCTdQngtouA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671A7C47074
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170421049641.6966.5506672481610771214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de00fe9b811284faad7af20b219a67ddcb5ced2824671f40a12adb822de9e08
Date: Tue, 02 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704210496
