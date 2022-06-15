Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DB17A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655308079;
	h=To:Subject:From:Message-Id:Date;
	bh=ebT+CCSnUYd2kgatQYCmm4U0j5FIldOpNWIMdvQPqTo=;
	b=f6hot8HQ68cnYYFm0EdWW9jGFT5Yhltbj5aK69qsO4VXqsLwxQ3Ip6qfJJT6oYPW
	jcXkNnty8dxtiIFMuokiEW67rjg/9KNbBM8Z1u7Q7R9Du+P/XJ97jR2Wx2wS1LXp3+m
	kE3lxJYLgZ13z3QcGf/WAUVeStdYOAJ8dL71+6qQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655308079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ebT+CCSnUYd2kgatQYCmm4U0j5FIldOpNWIMdvQPqTo=;
	b=gjNmRD5+PoaCla1WJlzQDsjh9eibagYir3cKf3v/mIEoZ8TPXGEUqBFDG1VmPrNY
	N0nKI6vCvFf/EJY4uPZRdAKVv0XqOIrIETutPe1hiVP8LuqhCNEx0YrZz33EiTprqAQ
	burhW+W919l+UjM62CHBGfWcbeObw+jmIBD1KVoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181680cd09a-4a0dda4d-cb08-444f-98c5-f8390615affd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55dad98075a84b9affd0b8447b933d75ed62a24875b9b28897c5be8ea270c607
Date: Wed, 15 Jun 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655308079
