Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0081CEA8
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653470399;
	h=To:Subject:From:Message-Id:Date;
	bh=oWSEHGWL/OmVoHoTRXjT4kevD6iVc1G8+FfKltOofHA=;
	b=fk5PXAIJGE8hl6yHGtYyi785O0e3Mg4fr3iig8eRJMYGFz+LIuwX9qG4WITkuGEd
	XMXDtbmMdrJf0+fTufOpwm7dz3Eqpyf80Pt5NOInze2ISN09c9tlOpQrRyrCK5CjYKN
	w7iPi/ORN2I00BHUf1e4BaLaS9Oz83fQv8huuKgg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653470399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWSEHGWL/OmVoHoTRXjT4kevD6iVc1G8+FfKltOofHA=;
	b=K7pfs2sb5QLw8EI3WqT0DLngUIMlSr4v6WfyWmBiuIxz7tAkfe2Po7L/nI+jKscX
	JboqGgUekpFjb2DWU7YqzwjjKVtjwZKQrXrmZSVpyJAqqp7iuNFPFYoNge8KYOoXUeE
	2gy10FFJ3NINXYuD+sIs04RHytq8V8KiFkrr4ZeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa840b46-3203f595-33a1-496a-8c0c-c135607dc03a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c658a34c7b598646a7ce8d951f03147c67a1c86c107db79928b4a5a26a437410
Date: Wed, 25 May 2022 09:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653470399
