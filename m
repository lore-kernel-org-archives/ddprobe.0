Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8B57C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 07:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650697558;
	h=To:Subject:From:Message-Id:Date;
	bh=4UmLVwIHlLl3heWha5qtWVDPWZRDAvmlMgXCzUNuUHU=;
	b=AQsX9sEsteZftJhabqdjXHNGIBe/CdU0DVBUy5YogU1MWgqtMP9vNwLN72HJkAvg
	M6RRQt3C4sGiPjUOUm9EkiNDFTd6eFq3gQwdrJJkwARg8tuTX1M84Ohdv6+QZuXdg9T
	+2iqFXFi6+8A8woDWT9w09SEDJbxOuP/DTHkl6Qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650697558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4UmLVwIHlLl3heWha5qtWVDPWZRDAvmlMgXCzUNuUHU=;
	b=B8LqVEyoa/ssETnTMiuQCwYvk+1UnlN0Eat3+wdSvg1/7OVp+uGDpLt7v2IiUQq7
	pwzNgMLMhx714BJWUFHxS5HC0W5Dbte+2yXA7qbpUite851dn8yIuyPVevm6E9mmxh5
	tNubQDjZNMADj6UNrTmjlXwqfbOxgwfU72zjt12M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180553dd8e9-4df5cf5a-bd38-4f91-9a9d-30d887b1f592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09f8777f342c94c5356af44447344b69441c72141db6cc7b9b4364a446d9136d
Date: Sat, 23 Apr 2022 07:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650697558
