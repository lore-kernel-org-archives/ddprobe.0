Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD1E33D6
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656714412;
	h=To:Subject:From:Message-Id:Date;
	bh=6Ah8os2LXo/Mv44mAzuRiv3CPahOL5GTSu6hbuwyW9Q=;
	b=AiYUxLQsF1pWZR6Noqnk7PhRl/0aJGDmW/wyisE8k6IxhAxREMYpIv4Lq/TybIyr
	AlKNp4LxA39Ni8AkeTwzuSUnfJ7uO/zNv2c0Y5ZvjmHtm/XfcefPtVlRCJ8NnzzuDA3
	OxPBUru77DlSxQdHSEor2dDSE92b9szGG4LiP600=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656714412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Ah8os2LXo/Mv44mAzuRiv3CPahOL5GTSu6hbuwyW9Q=;
	b=cqJIZz7be+XIdi//yudy9CNJrJMFuh03/FXDM/A2M+UROmNsQiS8upP4m1O+hSvp
	gPR4rseVGzdThvhZNTP4lKM65gtuPn0XMI++asFtRSAoxrMPh4DLuRc5QK9uyhGHXai
	kkYPP97c6kJKLEFjG6+QFtnGZcm4uN6COq8P76CE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbdfc0ea-ca9ed2f4-f532-4cfe-adea-235851c660b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 740e7f8bb8472b5f506a7d42e7be2f8aa1a404c766f44dd01915e10242cbddde
Date: Fri, 1 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656714412
