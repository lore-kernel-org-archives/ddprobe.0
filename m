Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0377A1FB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 01:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648171378;
	h=To:Subject:From:Message-Id:Date;
	bh=H5n5ezFMsj24tl+BXZLBsBqRxuZ3G2VkTZ7I0txoPWY=;
	b=ljmk8/cne5qySbNbtTlcFBCov5nvWkuBF/PRDbS02XsxIcc38yZRq3nC/XAXwIIT
	Mhffau0f7VQRMeZmH4OREvGAPin1nLKyIhf828M+jC18pNDVauQ5s5Zvz13P7aYLgsd
	+u2xFANiFe6mVW3ITQeZhjjWTyyNvnfb1ZqGizLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648171378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5n5ezFMsj24tl+BXZLBsBqRxuZ3G2VkTZ7I0txoPWY=;
	b=cWIKiczW6prUHUkpMOpbiVjcwlFbpOqn6Ml3y/hTLea1Ndr5PAypJdozs1HP3mCK
	8yZQk7b2yTk0JJeC1RDA1MeRmB9JdWFFUkCHLgGV1L0DHWmZFORlmqZftW7stg3gb0a
	4GL8QyklK8Wyv2v9AzU+piTjl7wgYgAD3LIXBHjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbeab6663-9616f38d-24c1-4dfd-a3ef-2dd493ef607d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ce9dfeeca9e729744545a2897ebdffb71f11e85663bfa14772ca92945ded749
Date: Fri, 25 Mar 2022 01:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648171378
