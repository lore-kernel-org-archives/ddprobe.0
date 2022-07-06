Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC6B173
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657066612;
	h=To:Subject:From:Message-Id:Date;
	bh=llDyfZMNxNb0+VMeeg4quxNckF75EAVGpdOGOUx6u+0=;
	b=ciEKF86C10QornJEuA2HbZbxne6bMacU2CUY5Ph+9F54vNU73etAL8Qghz7naxZr
	/aOUdtvc9YFKFRVmZWmmkTWEmyU9SFak5Ami6Hh7RUi8nu7XlRBv3jv/zI9hMx+8YTX
	qA5BiiwSsyGIx2Yd2C2i0biC2TuyAdpS7W4zfWl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657066612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=llDyfZMNxNb0+VMeeg4quxNckF75EAVGpdOGOUx6u+0=;
	b=gezXgQUQtTHnPTWxgivKua7YGhsX4tntVUoprWpUvs/v0B6YnTusQqarjRlSbfyF
	6ZZedxuNQBxNJ8NIqG7YRaWPF9AVZc8ImO+z7VREaPTD8XE6tBI26DgUAcwnd2j0pGJ
	L7nxpKKOpf/Ncg1rDAUudKkVchkCVIc3gA/V12RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0dde690-bcea8d68-3893-43e9-92a9-842e1fc65198-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f32fa094699cfd6d9d0431a48a2d6e95387da2ad52e643f88dddbd5839f3d22
Date: Wed, 6 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657066612
