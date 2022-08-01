Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD777F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659328852;
	h=To:Subject:From:Message-Id:Date;
	bh=Jt9f4gNTwUAU7koJlEF6HppNNOa0F/IeDaWlqeatnHA=;
	b=OSOUJYysdT1rVWR6NhoxPIPA8zevFr+61mJBIqrTfN0wJuJAP/iJAoKR0G0xdadO
	DAwFXM7w+FpjpO3H+1PSqDxly7xqGzYnGU6ku+APH1o/M1oxwNJd9ygw6cL286oSvqG
	JeUepb/WqlX1ycbo6Ur5cj01q5G5/9zXik5Premc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659328852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jt9f4gNTwUAU7koJlEF6HppNNOa0F/IeDaWlqeatnHA=;
	b=gms3bHVqzF3NnTfNmpeP5/+by0LBq6mykvVUSvhCBj6MB3OS+hF7LMdLg1rPw6iY
	S63naLXY8j8upmvqQyoy/lp8MSej3uyg62zomZO1Dq4oWOCYcYH8cC5NoUs5NkJxzIn
	pbdeIgmkUPMPoNjQuWNoTN9wXCpnpPDgL+2cqV5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257b4f22c-50a2d8ac-bd17-4a4c-92f4-df140ff83069-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ac7697dc0453f246bdc729f97bdb740cf866b989c1ef077cadc9b9dd6b94672
Date: Mon, 1 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659328852
