Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2DE28F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D767C433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671706887;
	bh=NBGnn2UIInKnQJas5KqrfXVaWiP02HasEpMKN6cxrmA=;
	h=To:Subject:From:Date:From;
	b=AmZ0zD9bpLBTCx6Vb9yrenMtXYFQi+yfUkTXzX7uPRq4/OmJey7cgebg40VSdOTs3
	 X0AdlPHyAr24YPq+nywEUJ7dre+OQjOg6UjNBJVCrgOL63xBUlpLS5Ty1EpUW5ISII
	 vLscQwToRxG35n24rOMfB5DzV86knWIETqMUIarwbt5i/JmfwpTfgXeUZ+QRJmjJRb
	 QesZ7CKvbCiEcoEXO2+Z0fK/vRLw7zcVwLIIz3zsunx5KJ+5mxTCPifuJEKvxC6wN+
	 XhLPKcMzLBQhFoAgMahEiN4TaNczzT9e4wo5JiNGT3k+qRuqRe50ljXo8oej0QMKbR
	 DlLBn+f6L6CeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73231C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170688745.2895.13965718767449907744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4956e0a75ba54e4bf7f9b63df5cc66f661207b3227ec0ee0e4af812fe3c980d1
Date: Thu, 22 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671706887
