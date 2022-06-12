Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D5C7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654995899;
	h=To:Subject:From:Message-Id:Date;
	bh=32EQs7zgtgetKTh6D9bbi470i3IDm1ZHB/xby4B6VHM=;
	b=SHHjnLeprJocn3kmE9o2q/z0lO9vnspSOZm/DxiJyZGls7xXBe6Ixuk1vfQUcAHC
	65PZ1mJ+VcEgrEPljJS8IbWxUis7WmwVKvpR2FJe0mw9xZ+9fsy8szbWxXG1T3fYn2V
	bnEJVA9IdACQ+WNQQnW2sPe9mofxcwDE7CHTc1vs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654995899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=32EQs7zgtgetKTh6D9bbi470i3IDm1ZHB/xby4B6VHM=;
	b=HFdwHT17u+QsyAeRy2AUbQYVrLTVjTz9Yax5SHjXa6vtubmbS4/wodIIALW6Oin1
	H3skNYyefY+SiKjnlAIMyyTf/C3ocwQ7QUTOK+8+nCSLorEY2R9NvN3OuwQXqguNwKh
	qQjE83i7dLIhTCpadtnS7hq6K3wetJ15WlrvddIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155715369-83e1b0b3-6d69-4d7f-a19c-faec0e1c2f0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30994c35326a37d57f761ce11fa5cbeece137fb3206fbaf2c93a902a2f197c0d
Date: Sun, 12 Jun 2022 01:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654995899
