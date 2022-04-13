Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09B7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 16:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649868298;
	h=To:Subject:From:Message-Id:Date;
	bh=5+f3rHMBZRdD7HcPMd8Tn41H5oNh4Fvfn/WoJzuF7Mo=;
	b=EUzWumy0aVgy52xiHQCneyE2NQYFMs9qUtTmT4BIOb+R4zsoAcmelndImj/AGZrE
	XCH4AodCa/sG1TLY16kfBI/YGB8Z7opHR+GrRI5qNaCC5LPdd6S+JJWDG7BBRtqaQPF
	AhVo0CYJWl+lwHpMyLIsZf3DUJ4ZXLJDrq+mlWDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649868298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5+f3rHMBZRdD7HcPMd8Tn41H5oNh4Fvfn/WoJzuF7Mo=;
	b=OOdJXK7Rqg3WLY5+XaKWMkQ67AfKh/1HG983coFnNED8DvBd5jycbLuAcy/eFw8r
	qs9KdmW0WHZG0fuhy+GRe0h5rxv0IOdjQYOy0sVWqx3c2DWgltKS2KolUNdjpzSk3AG
	rnpTNexCB2fxSb59Erh4IFBinltrIfQpxJggCjJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018023d05892-2b6d6b31-c278-4e1b-b04f-c5d778a3cbfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42895a19d92d576b1f82982192eee2112330f49a1f075bf8c5048eddad0fd9b8
Date: Wed, 13 Apr 2022 16:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649868298
