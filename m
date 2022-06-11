Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32557A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654934399;
	h=To:Subject:From:Message-Id:Date;
	bh=Mo+g5CAcoGgw+nKaKsRplrX2zfSLIkLVrg1Jt+sNcLU=;
	b=HZh023s1l19zJm0nGh8YeZNSAm+HJgG2EMLQ6xFLBDiqrGampEwCkG8/CAIEZl41
	6VMPOuGyC81+SMCQQHFHDDpWwYn8VuEeEWgM9bO+OiCqWRLheMH8RnTESXMcuie1i4a
	JcqnPe/X2OHmfd5+kOXA67sTr58UYKoZhUF/ueM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654934399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mo+g5CAcoGgw+nKaKsRplrX2zfSLIkLVrg1Jt+sNcLU=;
	b=RDQZ/r7PjOhnGuDOx3iRJ2wSDh0OU0U3h9m2DmLBzqK7eoUYDxWvJqCw3IDl2b14
	RDF/iNmXcE8JdAtHW7oXLCJ6nN1VaZpmqeuh+3PJHCO41kP5ib+K7FSnQouN8mDioS8
	s6EHTZchXRikUzKmwSq+U0YzV61jlqZUwUq/MqWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151c6e912-83e44320-d49e-43db-bea1-fc1f4723eecf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32994f9e9ef4a08ab3d62d9343ad44749abafb3e3d3341a90f8f4981ef470816
Date: Sat, 11 Jun 2022 07:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654934399
