Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3D97A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656407812;
	h=To:Subject:From:Message-Id:Date;
	bh=h9q+wLQ/dRIZb+BUizNcgCJ+aMA2QayMSHVOwnhss2M=;
	b=BJm8W2z3LjVoxXDxsNUqvY2d39/1IyPNE5AON0yYBKVRlZzSduX7hPgj69HunHQx
	nvEjm2zCNpZi21b1rM92eO9VLLRk0VqhjwcD5A6F0wp8KVTjln42fOopJZWNAVX3kyB
	RSBS95S/oexKIjLXMcZ2NDv7oK/gC6d4lEdCCIkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656407812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h9q+wLQ/dRIZb+BUizNcgCJ+aMA2QayMSHVOwnhss2M=;
	b=gqAb71vyFOaWmCA6PtkYdF0GZxB35fjc5SfFxtTJEpDHY8Sz+4dMZvcWnHRH3EqA
	fXzq7iVKoXpVR12lruao59h9d2vcPk6dfMllIU8oVhT8Y0Ab+ZRA4u2DTyWFpLp6obt
	XqVcks+Q2Ub3bHCzz7qcGjXvzvcZ0lHSBmibUn0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a99968a8-eea09ab0-d254-41ec-ade1-907b05d5d873-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f48e22b7ae72461287cb01bc2f4d1b2d948098382cc7ef32b94fd8fa730b3b4b
Date: Tue, 28 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656407812
