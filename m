Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA8D10F2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D599FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683393485;
	bh=w372+D4bQde6dbKN06fryYZUuMZjAKAQ4VmL2IiAj3I=;
	h=To:Subject:From:Date:From;
	b=MZQkryQGay1DWmCJhAvYgJkfzMl2WM9HkamiIrb+9po1ArGjRgfvBb+YQxeFLWi02
	 5ay6P/Pi7lXhwYdvBkfiJr408uawRlPfhMSjWxe8UcynETQhaD7Q1bcYgbncfN1YXa
	 IOLGWdAO+WvRikAyq0Yo4KPJ8OaNodESRLgJfs/EuUIj320r4VZC5xLMbe81gm8jPl
	 aYakd3Mq7I2BbYXbATjLzHCq/AZT5PiMzMT4QkNT22c9w9j7n0dAaLIerEx5Vf5bQR
	 QHlw1jRrvwF5TtDDwks3YgwIOpuiThW/IhAonAIH1tYNRbzXSnL8vWJbiM9+gTVJ2O
	 WIieKpCr9GvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEC7C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 17:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168339348575.2317.16498156668099998632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affd4204b955fe28d6c30ef602a186e34dfe16dfb8358ce0a5b56a3d02cfa119
Date: Sat, 06 May 2023 17:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683393485
