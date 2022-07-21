Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F4023BB
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658382412;
	h=To:Subject:From:Message-Id:Date;
	bh=AmOmXNaPgf8mL9EATYMkIZ2b0iOnz5Ur2CUP6mhcxac=;
	b=PYdZ93rORhWyEmKIgkhyjdT3hRlGtNe/GeqV7G9I2DIOATsJKBrLjzxVJ+LJ9dzB
	5+gQloJeOaly88Xq5Y3ZKK2n2uRQQCaPY4XiVKh5tY4ot1jBqdol871HMA1pgO0FcSp
	zfL1DVOhwAjjhlzu9bwO+dVGzc7XnbrEef6AuTtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658382412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AmOmXNaPgf8mL9EATYMkIZ2b0iOnz5Ur2CUP6mhcxac=;
	b=R57auU3m0ZasE6XSR+Gb57wNivSQOFNdfM1Pm0BWUUpYCHnzVLc2qQgmDmtIlI7C
	Fzdk+nCJffDb/RJPo30kAXlxFsY3+S+2S/vbIg5Ra+gAKdNXjLAmhdXji2PreGtylxm
	UKQkGnjxDTQsXxT/+Zt8AK8FG3X96NUXDH244Mv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f4b6a91-247e0f73-8394-4fa2-9a11-86f457d0fb7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 012581a1036ae0d2ac0c0d1394189a2b4fb14cd84cd15ebd5dfaaaa548925c29
Date: Thu, 21 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658382412
