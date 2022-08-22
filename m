Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767A0256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661180452;
	h=To:Subject:From:Message-Id:Date;
	bh=G59PpUS55l4TMuFkLcR1lUJihuUmyrP2Ly6d7E+D1v0=;
	b=Um/0Z9NwYiu2glurCBEGSmfkRbXGpajQjRlrvKmAEjlWIihvz9qFqHEpcFDf9K/d
	8I6RCrGCPz7tNV7x722BYtZoFnBZHttqwA3cxMwIjCtj0Kk34+AKsP3+LISDL29aCRx
	VzMPZ967pjlZEqtXysLy5igVb8y3T1OfSBd9ajco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661180452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G59PpUS55l4TMuFkLcR1lUJihuUmyrP2Ly6d7E+D1v0=;
	b=bgPL8EtyWcPwTMGoGWoEKdBKw3iLnWo7SSKTlmY30cTVjsdaTpxaNSuoLAKNnhvj
	265+8tO7qAClvKhfuJvNxHqeJYGfTFy0klTEIbI81/IG+cgcOX3cuhVGCm5uV6kCLHZ
	vgAQrVFbb8ssAq+DJQhdZV3mOnYOqqmray1Oqm0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6121ee8-8e058e31-6b46-4b8c-a053-5833c18e6d0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62dc0bf735fdef3b499928310e0063146b62bca1e1737f22b22e1a448d879c06
Date: Mon, 22 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661180452
