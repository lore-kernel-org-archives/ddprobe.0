Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7782B33C9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646224584;
	h=To:Subject:From:Message-Id:Date;
	bh=7icS5Hh3Dex1VnHkMr3hnIt2pIwxmf8GBT7SgNXvxdI=;
	b=QUER0wxhuX8culXsrVHeCL8Bs59chIAe0aYOzKAgB30ySUliKtJKOgntA90/tSbC
	vumYqPonzatVb3jGQnflyOdC+hNz6XPwLeX3eVJDzjEaVCk0LVQI0MWRlfRLN4QjHO1
	3kixm6BdXjkPqXedfwDfGkzXA5CWGOe7eNHphF2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646224584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7icS5Hh3Dex1VnHkMr3hnIt2pIwxmf8GBT7SgNXvxdI=;
	b=QwLMrplg9EMBEvrA7UoYmvNX10GSbn+aVMY/eX5Ri4LnlFBmZ56XfHz+OV4E7ym6
	PJ/N3ZQPKQ7SJGZdZ3JoJGR1r4szI0WkHOtVs09lKeCqK+moM6KNqx3JttEOHg6HOzZ
	V4cxs1MXPCM4SrOO5V1up2AIWSPGKH5XXWL6whTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4aa1b02c-33ba3304-651f-4bb5-aa69-34f4c1cf5960-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e94cae03e88686dcf887211cde1a21ab58f5baac6e69fdfa19ff7b0c4ff20a9a
Date: Wed, 2 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646224584
