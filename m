Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B693625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657184812;
	h=To:Subject:From:Message-Id:Date;
	bh=765rGptzQLWcuCjrq8QOBul+h4tqw83nYcCvmGSP8dM=;
	b=W3eMQWSvsiAsshGAoryu3SN1Xa50Om93vnmun5Ij8f6kX7vobtAeoI9YOMl9EFYy
	jFDt0QRMgyLO5JHUkHVt4wpn+3S6wcofvqZac7lDMcAe/bJ+qipkOLOEOErxAePQvlN
	32mWvyz+452ZJA4CpeF6qUq9cMN77S5Znfl2t31o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657184812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=765rGptzQLWcuCjrq8QOBul+h4tqw83nYcCvmGSP8dM=;
	b=ifldw07NHlbk0zVMw4EwNgCkSIcQeBGCnwT+jBsDfCeaOnObmlTajV/8RoZYiLBN
	8htRnCRjlaTlJTCZvoYHlmSFkmvM3978S+z9TlBtLvJRLb8l30biW+EAvuRQvz9o2a3
	Ox94R+RQcW4pzdEcVcwDe60U/VOYw4hqhSmczyYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7e97d09-8c8f54db-ceb8-4bfc-8a42-88906da561ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5231eb8cba1b0c06fbbfa0b4d7d3902b4c742ef5f8cdc83da80c386ab96af4af
Date: Thu, 7 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657184812
