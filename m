Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209171FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653677759;
	h=To:Subject:From:Message-Id:Date;
	bh=+TJ1TpPORm6g6MjkZxccGQNW6/uVXeSmzv/JzUVsMRs=;
	b=g+T6vEOoqavHjA/RBMpbq9c0cf9qEKI3Ae8WB3FNNQJ17G/5erGpr/SheX3d2sc1
	uCwGhh9LDvh4eB9kytUWJOzjMGNfyiiZsUhnABojG5L/h3Y7yQl3NiolGK34lqZEKkA
	EaBhgUsWwzJW2W/PX9L+E8H+dIjf/O2hvFtWy6gU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653677759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TJ1TpPORm6g6MjkZxccGQNW6/uVXeSmzv/JzUVsMRs=;
	b=YuVHlW8Dfs50HICziFJAekPrh6I7v8Q7HJ6438/aEc6elGkVefcVNtTAYc+ZpwF6
	YH5L0QCIeKoqI/i0En20ACSJXNo4PpwkONyoVR63lZs2ZGxlZ6ysFiw2ch0FxAMncz9
	EaeXR9FQrnfP8zlAlrNeEflxzS16q7shbWlZi6o4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106e01b22-1fe2942e-50ab-4e1a-b379-a853418f27fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fce619469a494835ceb05f9688278d98fe39244d59826ea99f9ce18dd6f9eb32
Date: Fri, 27 May 2022 18:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653677759
