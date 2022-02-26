Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DBC23B6
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645878685;
	h=To:Subject:From:Message-Id:Date;
	bh=bzvKXcwQnnZi6eDsj9BVbudBPFPZtuPYOYa647VroJQ=;
	b=JHcZnGPk8qlO5KVFD4pUs5AlMvcOHMNqjoCfgfml4y8eG5Gm2IlXX3wWuhHMylz3
	oOrBhVWpliWtKUJVKkvIlak21ZAXL5xHfNvPQWFpv6300hcnH4WSwVszV/MmPba4+SC
	EhQjV2zQ3uJdTO+4Pg39/iIbV55hhqfsEqYu3Oo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645878685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bzvKXcwQnnZi6eDsj9BVbudBPFPZtuPYOYa647VroJQ=;
	b=azZSoaBqvr9+VowD38qwEuqmfQn5AlWXwKipNSxl4ZpF59AR4JQGHBFwd8f7JcG+
	zv4tGXT+6NRMTeXoRd2cHC+8Sc94Y4gKLnYpVA1ZXW9bt9f9FgnfzAWAINjZQIQFyN5
	yVIC6FM4PQxwqNXcnaEJW5evufdhEMFFKSuviRpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3603acf7-d343ec62-6401-48f5-b1d6-12940b5b42e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77230050016fab57f2bec0a72179793e1d31a8b14eca0155122c3659801e2055
Date: Sat, 26 Feb 2022 12:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645878684
