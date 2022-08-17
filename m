Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7403E7460
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660767053;
	h=To:Subject:From:Message-Id:Date;
	bh=dratjBKFqGhsI8NrV5+2BRkKTN59UzW19A9W5jP5V38=;
	b=ZT+TiqWil/TARuXd3wTA5UA0puRPkIckIqMMYuR9P7lTEXS8NnNXdUOXVexovgk9
	1uN1cPqN9AZlDSiRSydBX7Tk5REKpNlAVCJX8igH40x1sXsE5x4ileYU73gMQB/Lcdt
	vqKTvDTSGGF7N6SLxLuguHWhM6s5Y8SG2hiQOSnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660767053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dratjBKFqGhsI8NrV5+2BRkKTN59UzW19A9W5jP5V38=;
	b=MIwpK0TARUqSGOH60WmuWrxESnbxlNc+UPQ/NInbrO9hd0u0P0RZ/FN441QVNh0m
	b3EuEbpOovl1TeABFsJyW4duJhsh/TY6s7iik4OJhXSLvNGP8MN4/sraVaSl+orVS3a
	+rRXEFA4p3VbcIM9wBvYSkDkiQzu7/RLpzAu19JM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad6e234b-796d06f2-f526-4518-b96d-c6ba9abed234-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b1ebcffb80d6edb921e6eb1930a0447527bf435aaca8e1ea1e7d1119a0eb224
Date: Wed, 17 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660767052
