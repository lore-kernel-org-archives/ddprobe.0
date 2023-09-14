Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D12241E0
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 13:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE48C433CA
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694697248;
	bh=xyfMO7WPll04MmCQP+qYQPt4uZB9OwNdiZh+LZCwV6w=;
	h=To:Subject:From:Date:From;
	b=XKOtWx0KcGfqgSMlZnENKFOt+DVhY1sxjNzgUK08K/+npkC1amibMf6wbhZsnAI7K
	 dbLfoFDCZZc3/kzXirUItEiD+/A2YE+zoOt/0Sqhu2j+a4kQYKO0CIVOtZEB2hu++G
	 geiIQtChOJCIMCNHv3FQuRIcpLE3vDd5hurPqcfiCkgz6al9BDt3MYU5sTf3BAnPYx
	 ss8VrAOpud1UeokrRNvTmfqwJIXPAwv9AP2EG9iwX5Mm09AlQ1yip7BAZ0TsSjO/U8
	 UGtT6b/NqoRN11IcNYOvLXZHkwDg8jzL+Z/+56RKX8YhTuQKi0km7X2oX3Q7yyxYjp
	 7exyTVwrfIPmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA284CA553C
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169469724868.6413.7144460259048896753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9320f5fc015a473990714f825d244a21632f1c9e903aba292f27f6fab6e1e699
Date: Thu, 14 Sep 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694697248
