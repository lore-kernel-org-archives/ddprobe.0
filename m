Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FD61C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659808853;
	h=To:Subject:From:Message-Id:Date;
	bh=FSlfvp9QSPfMNiYHn45PAq0AqcbMp7e9PP/h892Hw3g=;
	b=XvoBJmdq02LarDqghg0LgHaHJyJ1dlJs8UE3IBfiHaP46XnA1ZR5HupWbU3gxoBH
	ITVRaVNVdMUMu2UxozrTXziKJ+LuGFDkNYQtzXu0fob4O49I+FMytcmxoTzRCduAiI2
	R9WCDA9EkRMwNzIMFjjHtJ+F8XjhzCZ+gcgUzLiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659808853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FSlfvp9QSPfMNiYHn45PAq0AqcbMp7e9PP/h892Hw3g=;
	b=S0WEK+Ymvfc0T4sTM5U69ct53+JQbgyxNpQs+FiCToMKrsKulgEkoIlTMcR2DexZ
	VVi98gtaLrFQZXOchg0/EBF2UVlFZcHCBq8x8D6eIuB+M3GmXWytooVJSZdv4I5qr6d
	jlOOG3rssysdCJbVlQObXir3WQWlzM46dQwI/hHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274512a78-f139be90-508b-426c-8090-58cb9ba3e419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ea98d1c0869add3ccba8eb08f2210a0ebf39d62d635f58e97d7004f9db641ba
Date: Sat, 6 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659808852
