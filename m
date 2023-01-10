Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3360192
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D21C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673325687;
	bh=bGz8U4Y5I/ety9/zRNB2eC55Kx1jZz+GHv2ZInDXjGY=;
	h=To:Subject:From:Date:From;
	b=vBgGxmSzqyGhggAPNUc/ekCPDLV2OaJ2ubze01uWUS0Mw/7ldCZBP24/A8sE9A2mM
	 vJYN7Iicr0v/yajp/C6xEniKDrJt3DIpgQiTXnOjQ4lFX2OSnV/u5WtrgjzaQiYsoN
	 ZvXzXPuRH+Ww/7gulNPXf5PtOf9Q5UUU+QorDsktD2VbWgKbYlr/3uilD4LikTh6AF
	 WiFD1bBu+aZTHBUCodjIjjPElYAIyIz+iauWmek2yl2OAVYekNaN+2hOZcFxmx9PtR
	 FlmxDrQo2NXAxLIaMxGxtuNsFSwWlO4XLtoS4/JlCZy3MdXwhsG2m5K+kzIfaLoBuR
	 WI7BbJ81lHa9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D811C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332568737.4664.7443168673746527657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8fbbcd4b4ade25480878c7f4598ddc28086c283a4c5598a643558165e4bf07
Date: Tue, 10 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673325687
