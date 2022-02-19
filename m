Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B2E4F51
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645242085;
	h=To:Subject:From:Message-Id:Date;
	bh=rWMBQ10Qd+Mztp49K8iorA6jE4/XIxn4QB6zPpwooPc=;
	b=GQDOOdQQnycRFJwaDsjUFVEkoGyKlENf8JeBa4AqP4fCeUhePb1x736SpDOHXIVf
	DaDp6ebZWrYlUisYPOvyIH0zUoaFFZw5Z4WOHADRTxgEuG/KvuodFEBJ1ZX7hZdilSy
	qnkfdOckD/aiK4caIS3YnnUTc7ZZB2NvABxogHxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645242085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rWMBQ10Qd+Mztp49K8iorA6jE4/XIxn4QB6zPpwooPc=;
	b=J+inqjcBOkeG/Ff5ocNBxDhiofwMnrU/NCKvbFQkDd11xtIXhjek4rxLkJPQ5lQ6
	PXyP7JbhyYg5P3jyHHoWRuQKY/SAq0IYwOKg94KkGAN2kfUTbTGbiVpCuDusn2G3Dw5
	EmgiqAbPGxKqbLSC+MBIODjTL9BUW1O5SF5ZsRRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1011ee60-4ce90a26-9596-4c85-a2aa-03b6f12e8254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0df44af64be4fe1c00e7eafd8bccd2d95799c27d0cc9d15ac3868ce73be80d5d
Date: Sat, 19 Feb 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645242084
