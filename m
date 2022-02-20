Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5854B160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645362684;
	h=To:Subject:From:Message-Id:Date;
	bh=QsrX1aNpFXds8Inn/SgX644yUyi8UT5GHaB641hfJgw=;
	b=VEBLPtELjCz9nbqrOJOBaveHjjgdaeUCYSVfGRKV+mbpgRVx05hlsFUwvwcatgCc
	ht2qZWc0KguMO/tyae+ezbCB0aMECEpUgy9jikZhl/VMRgbmd+4ZXM+Lhr4vFUuc0k9
	8Cg8NICAPiWOEjuHi+mzccrYM+qGq8k0qLSfZWfE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645362684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QsrX1aNpFXds8Inn/SgX644yUyi8UT5GHaB641hfJgw=;
	b=gHO0sCXCIwJitNWxw90XBDr035ftYEizHAbc4DwXrRCxKpdKS0VDzJkyMFgmpWkm
	gmk/EjTDKAHyrxnEc4qibpnJFjjFY+JV1PYgSjTNhvyVT35xBLF7wVkj3aNDIidYdJU
	+7s/pJDTiFGkJ0cLZghf61gueG9s5a11vJ/GaQsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17422347-b5951345-9c97-4f82-956b-97ba8d362b0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e82f6ab104144a3815fdb41ac6f4451132bf24dcfbd994ced38c22d3ced38b87
Date: Sun, 20 Feb 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645362684
