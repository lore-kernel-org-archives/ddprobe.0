Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDD7A33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646386584;
	h=To:Subject:From:Message-Id:Date;
	bh=G8lPobQW1mkwIREYVYumT3p6Wqs70Y6FJ4UfFFzTpVM=;
	b=ZlX2kbfpcDoZRpaWh7bVUj/5ZBQda9YOtE+bqB1UOisp+ULAm3F/qPwUKZmqMcT7
	wH+rNlJuFs8UY1vRzosvYf7pEPgNcw4mFUTJV7eMycjNH35a1cKEPqMrBUjYGJI5MZ3
	xlwmzASQMDtn6vi96N6QGwzZS3N0DfrgSEOmJD7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646386584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G8lPobQW1mkwIREYVYumT3p6Wqs70Y6FJ4UfFFzTpVM=;
	b=OBKhHyJboGudFzNDLDv40USzx/11zYLCTBJHiCCiLW3F8M4jx7gnOP+qmLDiOwvA
	Q7VIrCO00qcGdPIN/QUXSb9HyQBQJ76wE30tISF3o8vTMzmy4t0dPZC3jh2jEXOg01f
	eTRMQaxURCBBNn1yPpA7c5Llu48Zoy7NKVDyW9dE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54499cc7-b73452da-a872-4b01-be57-22adde27865e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41556f90486dff61c8b3b61ec519cbe69b3b99048d400c9d7ccc3d2db70d97e0
Date: Fri, 4 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646386584
