Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7867B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 07:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655538779;
	h=To:Subject:From:Message-Id:Date;
	bh=ZNJTx2BQSVMDthHNkn2m5wXgoQsR4xiYBVca8iN+zIU=;
	b=MT8X5y7ViX1lGyAmflsBXwCJdyr+yCMH+TR536OtbxMOYp9WHeL0MArNmi1UEcUF
	dYbNOmWOYgZckLLDAQc01FqFsgrLDhAiw3H4HrrxAhUew8JHidmbqePjwEAaA8yzPLM
	r9wzK2xy5mk/45WAIEP0b5zBwXtw48okVLcKQhKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655538779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZNJTx2BQSVMDthHNkn2m5wXgoQsR4xiYBVca8iN+zIU=;
	b=R9YMIXtxr5ePymjR/kqe7uo02pB1x0tdiBM5jedyoAWwvi2sLJVAm/TEE05UXr7j
	x2xwrLzBbCWWwphrRPiXW8MmALcb+R3br0xPvVRBPd2DNk/zEyVF1zVC5yqnvg3P+tL
	e/hPTGThhlRO/34Y56Jv/pe5fW14IO/aYT+G+rT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175cd0463-603870a3-b547-4c32-b485-e850bc136441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f4ef0655989873dea86e7861af5bc718310b14e41ee4f4c4a1ffbe7f9d6126
Date: Sat, 18 Jun 2022 07:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655538779
