Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510B17D0
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 05:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648445758;
	h=To:Subject:From:Message-Id:Date;
	bh=GMuEq4RDHysXb6ZYUmXll4/tE5FRX4H6VXtiHsoyzQw=;
	b=jUth5qOsn7d7XXcUMrNnsaOEZjtD2zGvMa0kMjAWwlmKVNh34HDXxc4mGXO+s3hH
	A616iuGQUlgWsimD7zgKVnSZBvY8ITTlwI351rLFk6CQYyKW4c8XyIPZJuE6Q/vWlST
	cOL8/WH2gxKLJianaaxi5y+TYpwQOiXGP1sbIx4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648445758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GMuEq4RDHysXb6ZYUmXll4/tE5FRX4H6VXtiHsoyzQw=;
	b=WCT/eX09M7Fe0yiCDPOnBSIaPKHyu1RnYoAtpKCRyr32HWivPqJSbkFpdzwAgZ0I
	gxW8ZrVE0xUkwL9v2xdfli2mSfi+BzbGirhvzaT2YmtWxgEPqyHTRr6gNRuebclR0Qd
	xTSAmRLI5gVE2DuogG9PUn1FTIxfsGrJbUOtBBTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf061b2b-ff0191a3-9c6a-48ee-a2fb-4bc2e9a2a3d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceddce371d710f647f47c9f50232c7a79a55b3a150a3d55d4c841039ba0a7ee7
Date: Mon, 28 Mar 2022 05:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648445758
